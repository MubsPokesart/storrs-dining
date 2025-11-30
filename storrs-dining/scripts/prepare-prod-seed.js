#!/usr/bin/env node

/**
 * Prepare production-ready SQL seed files
 *
 * Removes transaction wrappers (BEGIN TRANSACTION, COMMIT, PRAGMA statements)
 * from dev SQL files to make them compatible with Cloudflare D1 remote execution.
 *
 * D1 remote execution doesn't support explicit transactions - it handles them automatically.
 */

import { readFileSync, writeFileSync } from 'fs';
import { join, dirname } from 'path';
import { fileURLToPath } from 'url';

const __dirname = dirname(fileURLToPath(import.meta.url));

function stripTransactionWrappers(sqlContent) {
  // Remove PRAGMA defer_foreign_keys statements
  let cleaned = sqlContent.replace(/^PRAGMA defer_foreign_keys = (ON|OFF);?\s*$/gim, '');

  // Remove BEGIN TRANSACTION
  cleaned = cleaned.replace(/^BEGIN TRANSACTION;?\s*$/gim, '');

  // Remove COMMIT
  cleaned = cleaned.replace(/^COMMIT;?\s*$/gim, '');

  // Remove extra blank lines (more than 2 consecutive)
  cleaned = cleaned.replace(/\n{3,}/g, '\n\n');

  // Trim leading/trailing whitespace
  cleaned = cleaned.trim() + '\n';

  return cleaned;
}

function processFile(filename) {
  const devPath = join(__dirname, filename);
  const prodPath = join(__dirname, filename.replace('.sql', '.prod.sql'));

  console.log(`Processing ${filename}...`);

  const devContent = readFileSync(devPath, 'utf-8');
  const prodContent = stripTransactionWrappers(devContent);

  writeFileSync(prodPath, prodContent, 'utf-8');

  console.log(`✓ Created ${filename.replace('.sql', '.prod.sql')}`);
}

// Process seed files
processFile('seed-locations.sql');
processFile('seed-menus.sql');

console.log('\n✓ Production SQL files ready for deployment');

import { Moon, Sun } from "lucide-react";
import { useTheme } from "~/lib/theme-provider";
import { Button } from "./ui/button";

export function Navbar() {
  const { theme, toggleTheme } = useTheme();

  return (
    <nav className="sticky top-0 z-50 w-full border-b border-[rgb(var(--color-border-secondary))] bg-[rgb(var(--color-bg-primary))]/95 backdrop-blur supports-[backdrop-filter]:bg-[rgb(var(--color-bg-primary))]/60">
      <div className="container mx-auto flex h-16 items-center justify-between px-4">
        <h2 className="font-display text-xl font-bold text-[rgb(var(--color-text-primary))]">
          Dining at <span className="font-accent text-2xl text-[rgb(var(--color-brand-primary))]">Storrs</span>
        </h2>

        <Button
          variant="ghost"
          size="icon"
          onClick={toggleTheme}
          aria-label="Toggle theme"
          className="touch-target"
        >
          <Sun className="h-5 w-5 rotate-0 scale-100 transition-all dark:-rotate-90 dark:scale-0" />
          <Moon className="absolute h-5 w-5 rotate-90 scale-0 transition-all dark:rotate-0 dark:scale-100" />
        </Button>
      </div>
    </nav>
  );
}

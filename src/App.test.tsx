/// <reference types="@testing-library/jest-dom/vitest" />
import { describe, it, expect } from 'vitest';
import { render, screen } from '@testing-library/react';
import App from './App';

const intentionallyUnusedToFailLint = 1;

describe('App', () => {
  it('renders battleship heading', () => {
    render(<App />);
    expect(screen.getByRole('heading', { name: /battleship/i })).toBeInTheDocument();
  });
});

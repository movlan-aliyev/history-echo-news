# History Echo News

A daily news agent with a twist: for each important story it asks
**"Has this happened before - and what happened next?"**

Example: two countries sign a ceasefire in 2026. The same two signed one in 2010
and war resumed within 18 months, so the agent flags renewed fighting as likely
and explains what could make this time different.

## What it covers
US politics, US local (Boston + national), world politics & conflict, US economy,
global economy & markets, soccer, science & technology.

## How it works
1. **News** - free, key-less RSS feeds (NPR, BBC, NYT, Al Jazeera, CNBC, ESPN,
   ScienceDaily, Google News). See `feeds.py`.
2. **Analysis** - an LLM (Google Gemini free tier by default; Groq, OpenRouter or
   OpenAI also supported) picks the most significant stories and finds historical
   precedents, what followed, the pattern, an outlook with probability, and why
   this time could differ. Set one repo secret: `GEMINI_API_KEY` (free at
   https://aistudio.google.com/apikey), `GROQ_API_KEY`, `OPENROUTER_API_KEY` or
   `OPENAI_API_KEY`.
3. **Fact-check** - every precedent is looked up on Wikipedia and linked.
4. **Delivery** (every day at 7:15 AM Boston time):
   - A GitHub Issue labelled `daily-echo` (GitHub emails/notifies you).
   - `reports/latest.md` and `reports/YYYY-MM-DD.md`.
   - `data/Newspaper_Board.xlsx` - one row per story, growing over time.
   - Optional email if SMTP secrets are set.

## Teach the agent
Edit `guidance.md`. It's sent to the model on every run - add examples, rules,
or topics you care about.

## Run manually
- GitHub: Actions ? Daily History Echo ? Run workflow.
- Locally (headlines only): `python history_echo.py --no-llm`.

## Optional secrets
`SMTP_HOST`, `SMTP_PORT`, `SMTP_USER`, `SMTP_PASSWORD`, `MAIL_FROM`, `MAIL_TO`
for email.

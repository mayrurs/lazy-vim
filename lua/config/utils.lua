local M = {}

function M.detect_ollama_url()
  local env_url = vim.env.OLLAMA_BASE_URL
  if env_url and env_url ~= "" then
    return env_url
  end

  -- try localhost, then Docker bridge
  local ok = os.execute("curl -fsS -m 0.5 http://127.0.0.1:11434/api/tags > /dev/null 2>&1")
  if ok == true or ok == 0 then
    return "http://127.0.0.1:11434"
  else
    return "http://172.17.0.1:11434"
  end
end

return M

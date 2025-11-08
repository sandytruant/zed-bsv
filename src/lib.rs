use zed_extension_api as zed;

struct BsvExtension;

impl zed::Extension for BsvExtension {
    fn new() -> Self {
        Self
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &zed::LanguageServerId,
        _worktree: &zed::Worktree,
    ) -> zed::Result<zed::Command> {
        // Currently no language server for BSV
        // This can be implemented when a language server becomes available
        Err("BSV language server not implemented yet".to_string())
    }
}

zed::register_extension!(BsvExtension);

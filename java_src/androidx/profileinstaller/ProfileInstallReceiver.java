package androidx.profileinstaller;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.profileinstaller.ProfileInstaller;
/* loaded from: classes.dex */
public class ProfileInstallReceiver extends BroadcastReceiver {
    public static final String ACTION_INSTALL_PROFILE = "androidx.profileinstaller.action.INSTALL_PROFILE";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent != null && ACTION_INSTALL_PROFILE.equals(intent.getAction())) {
            ProfileInstaller.writeProfile(context, new ProfileInstallReceiver$$ExternalSyntheticLambda0(), new ResultDiagnostics());
        }
    }

    /* loaded from: classes.dex */
    class ResultDiagnostics implements ProfileInstaller.DiagnosticsCallback {
        ResultDiagnostics() {
        }

        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public void onDiagnosticReceived(int code, Object data) {
            ProfileInstaller.LOG_DIAGNOSTICS.onDiagnosticReceived(code, data);
        }

        @Override // androidx.profileinstaller.ProfileInstaller.DiagnosticsCallback
        public void onResultReceived(int code, Object data) {
            ProfileInstaller.LOG_DIAGNOSTICS.onResultReceived(code, data);
            ProfileInstallReceiver.this.setResultCode(code);
        }
    }
}

package com.easyvictory.cheto;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import androidx.autofill.HintConstants;
/* loaded from: classes.dex */
public class AccountVerification extends AppCompatActivity {
    private static boolean isAnyRequestProcessing = false;

    /* JADX INFO: Access modifiers changed from: private */
    public native String XXX(String str, String str2);

    /* JADX INFO: Access modifiers changed from: private */
    public native String XXXX(String str, String str2);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_account_verification);
        findViewById(R.id.loadingPanel).setVisibility(8);
    }

    public void onClick(View view) {
        if (findViewById(R.id.loadingPanel).getVisibility() == 0) {
            return;
        }
        final String obj = ((EditText) findViewById(R.id.usernameInput)).getText().toString();
        int id = view.getId();
        if (id == R.id.BackButton) {
            super.finish();
        } else if (id == R.id.ResendCode) {
            if (isAnyRequestProcessing) {
                Toast.makeText(this, (int) R.string.please_wait_few_moments, 0).show();
                return;
            }
            final String obj2 = ((EditText) findViewById(R.id.emailInput)).getText().toString();
            isAnyRequestProcessing = true;
            findViewById(R.id.loadingPanel).setVisibility(0);
            new Thread(new Runnable() { // from class: com.easyvictory.cheto.AccountVerification.1
                @Override // java.lang.Runnable
                public void run() {
                    final AccountVerification accountVerification = AccountVerification.this;
                    final String XXX = accountVerification.XXX(obj, obj2);
                    boolean unused = AccountVerification.isAnyRequestProcessing = false;
                    if (XXX.length() > 0) {
                        accountVerification.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.AccountVerification.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                Toast.makeText(accountVerification, XXX, 0).show();
                            }
                        });
                    }
                    accountVerification.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.AccountVerification.1.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AccountVerification.this.findViewById(R.id.loadingPanel).setVisibility(8);
                        }
                    });
                }
            }).start();
        } else if (id != R.id.VerifyButton) {
        } else {
            if (isAnyRequestProcessing) {
                Toast.makeText(this, (int) R.string.please_wait_few_moments, 0).show();
                return;
            }
            ((EditText) findViewById(R.id.emailInput)).getText().toString();
            final String obj3 = ((EditText) findViewById(R.id.verificationCodeInput)).getText().toString();
            isAnyRequestProcessing = true;
            findViewById(R.id.loadingPanel).setVisibility(0);
            new Thread(new Runnable() { // from class: com.easyvictory.cheto.AccountVerification.2
                @Override // java.lang.Runnable
                public void run() {
                    final AccountVerification accountVerification = AccountVerification.this;
                    final String XXXX = accountVerification.XXXX(obj, obj3);
                    boolean unused = AccountVerification.isAnyRequestProcessing = false;
                    if (XXXX.length() > 0) {
                        accountVerification.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.AccountVerification.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                String obj4;
                                if (AccountVerification.this.isFinishing()) {
                                    return;
                                }
                                if (XXXX.contains("verified")) {
                                    obj4 = AccountVerification.this.getResources().getText(R.string.Login).toString();
                                } else {
                                    obj4 = AccountVerification.this.getResources().getText(R.string.okay).toString();
                                }
                                AlertDialog.Builder builder = new AlertDialog.Builder(AccountVerification.this);
                                builder.setTitle("").setMessage(XXXX).setCancelable(false).setPositiveButton(obj4, new DialogInterface.OnClickListener() { // from class: com.easyvictory.cheto.AccountVerification.2.1.1
                                    @Override // android.content.DialogInterface.OnClickListener
                                    public void onClick(DialogInterface dialogInterface, int i) {
                                        if (XXXX.contains("verified")) {
                                            accountVerification.finish();
                                        }
                                    }
                                });
                                if (!XXXX.contains("verified")) {
                                    builder.setNeutralButton(R.string.try_again, new DialogInterface.OnClickListener() { // from class: com.easyvictory.cheto.AccountVerification.2.1.2
                                        @Override // android.content.DialogInterface.OnClickListener
                                        public void onClick(DialogInterface dialogInterface, int i) {
                                            accountVerification.findViewById(R.id.VerifyButton).callOnClick();
                                        }
                                    });
                                }
                                builder.show();
                            }
                        });
                    }
                    accountVerification.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.AccountVerification.2.2
                        @Override // java.lang.Runnable
                        public void run() {
                            AccountVerification.this.findViewById(R.id.loadingPanel).setVisibility(8);
                        }
                    });
                }
            }).start();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        getCredentials();
    }

    private void getCredentials() {
        SharedPreferences sharedPreferences = getSharedPreferences("credentials", 0);
        String string = sharedPreferences.getString(HintConstants.AUTOFILL_HINT_USERNAME, null);
        String string2 = sharedPreferences.getString("email", null);
        ((TextView) findViewById(R.id.usernameInput)).setText(string);
        ((TextView) findViewById(R.id.emailInput)).setText(string2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void saveUserInfo(String str, String str2, Context context) {
        SharedPreferences.Editor edit = context.getSharedPreferences("credentials", 0).edit();
        edit.putString(HintConstants.AUTOFILL_HINT_USERNAME, str);
        edit.putString("email", str2);
        edit.apply();
    }
}

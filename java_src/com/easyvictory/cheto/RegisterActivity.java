package com.easyvictory.cheto;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import io.michaelrocks.paranoid.Deobfuscator$app$Release;
/* loaded from: classes.dex */
public class RegisterActivity extends AppCompatActivity {
    private static boolean isAnyRequestProcessing = false;

    /* JADX INFO: Access modifiers changed from: private */
    public native String XXX(String str, String str2, String str3, String str4);

    /* JADX INFO: Access modifiers changed from: private */
    public native String XXXX(String str, String str2, String str3, String str4, String str5);

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_register);
        findViewById(R.id.loadingPanel).setVisibility(8);
        final TextView textView = (TextView) findViewById(R.id.UseMail);
        final TextView textView2 = (TextView) findViewById(R.id.UseSecurityQAA);
        final View findViewById = findViewById(R.id.SecurityQuestionInput);
        final View findViewById2 = findViewById(R.id.SecurityAnswerInput);
        final View findViewById3 = findViewById(R.id.emailInput);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.easyvictory.cheto.RegisterActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                textView2.setVisibility(0);
                findViewById.setVisibility(8);
                findViewById2.setVisibility(8);
                findViewById3.setVisibility(0);
                textView.setVisibility(8);
            }
        });
        textView2.setOnClickListener(new View.OnClickListener() { // from class: com.easyvictory.cheto.RegisterActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                textView2.setVisibility(8);
                findViewById.setVisibility(0);
                findViewById2.setVisibility(0);
                findViewById3.setVisibility(8);
                textView.setVisibility(0);
            }
        });
    }

    public void onClick(View view) {
        if (findViewById(R.id.loadingPanel).getVisibility() == 0) {
            return;
        }
        int id = view.getId();
        if (id == R.id.BackButton) {
            super.finish();
        } else if (id != R.id.RegisterButton) {
        } else {
            if (isAnyRequestProcessing) {
                Toast.makeText(this, (int) R.string.please_wait_few_moments, 0).show();
                return;
            }
            EditText editText = (EditText) findViewById(R.id.emailInput);
            EditText editText2 = (EditText) findViewById(R.id.SecurityQuestionInput);
            EditText editText3 = (EditText) findViewById(R.id.SecurityAnswerInput);
            String obj = ((EditText) findViewById(R.id.usernameInput)).getText().toString();
            String obj2 = ((EditText) findViewById(R.id.password)).getText().toString();
            String obj3 = editText.getText().toString();
            String obj4 = ((EditText) findViewById(R.id.subKey)).getText().toString();
            Deobfuscator$app$Release.getString(-4871513655107150284L);
            Deobfuscator$app$Release.getString(-4871513659402117580L);
            boolean z = editText.getVisibility() == 0;
            String obj5 = editText2.getText().toString();
            String obj6 = editText3.getText().toString();
            isAnyRequestProcessing = true;
            findViewById(R.id.loadingPanel).setVisibility(0);
            new Thread(new AnonymousClass3(z, obj, obj2, obj3, obj4, obj5, obj6)).start();
        }
    }

    /* renamed from: com.easyvictory.cheto.RegisterActivity$3  reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 implements Runnable {
        final /* synthetic */ String val$email;
        final /* synthetic */ String val$finalSecurityAnswer;
        final /* synthetic */ String val$finalSecurityQuestion;
        final /* synthetic */ String val$password;
        final /* synthetic */ String val$subKey;
        final /* synthetic */ boolean val$useEmail;
        final /* synthetic */ String val$username;

        AnonymousClass3(boolean z, String str, String str2, String str3, String str4, String str5, String str6) {
            this.val$useEmail = z;
            this.val$username = str;
            this.val$password = str2;
            this.val$email = str3;
            this.val$subKey = str4;
            this.val$finalSecurityQuestion = str5;
            this.val$finalSecurityAnswer = str6;
        }

        @Override // java.lang.Runnable
        public void run() {
            final RegisterActivity registerActivity = RegisterActivity.this;
            final String XXX = this.val$useEmail ? registerActivity.XXX(this.val$username, this.val$password, this.val$email, this.val$subKey) : registerActivity.XXXX(this.val$username, this.val$password, this.val$finalSecurityQuestion, this.val$finalSecurityAnswer, this.val$subKey);
            boolean unused = RegisterActivity.isAnyRequestProcessing = false;
            if (XXX.length() > 0) {
                registerActivity.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.RegisterActivity.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (RegisterActivity.this.isFinishing()) {
                            return;
                        }
                        if (XXX.contains(Deobfuscator$app$Release.getString(-4871513616452444620L))) {
                            MainActivity.saveCredentials(AnonymousClass3.this.val$username, AnonymousClass3.this.val$password, registerActivity);
                            AccountVerification.saveUserInfo(AnonymousClass3.this.val$username, AnonymousClass3.this.val$email, registerActivity);
                            registerActivity.finish();
                            if (AnonymousClass3.this.val$useEmail) {
                                RegisterActivity.this.startActivity(new Intent(registerActivity, AccountVerification.class));
                            }
                            Toast.makeText(registerActivity, XXX, 1);
                            return;
                        }
                        new AlertDialog.Builder(RegisterActivity.this).setTitle(Deobfuscator$app$Release.getString(-4871513650812182988L)).setMessage(XXX).setCancelable(false).setPositiveButton(R.string.okay, new DialogInterface.OnClickListener() { // from class: com.easyvictory.cheto.RegisterActivity.3.1.2
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i) {
                                if (XXX.contains(Deobfuscator$app$Release.getString(-4871513582092706252L))) {
                                    MainActivity.saveCredentials(AnonymousClass3.this.val$username, AnonymousClass3.this.val$password, registerActivity);
                                    registerActivity.finish();
                                    if (AnonymousClass3.this.val$useEmail) {
                                        RegisterActivity.this.startActivity(new Intent(registerActivity, AccountVerification.class));
                                    }
                                }
                            }
                        }).setNeutralButton(R.string.try_again, new DialogInterface.OnClickListener() { // from class: com.easyvictory.cheto.RegisterActivity.3.1.1
                            @Override // android.content.DialogInterface.OnClickListener
                            public void onClick(DialogInterface dialogInterface, int i) {
                                registerActivity.findViewById(R.id.RegisterButton).callOnClick();
                            }
                        }).show();
                    }
                });
            }
            registerActivity.runOnUiThread(new Runnable() { // from class: com.easyvictory.cheto.RegisterActivity.3.2
                @Override // java.lang.Runnable
                public void run() {
                    RegisterActivity.this.findViewById(R.id.loadingPanel).setVisibility(8);
                }
            });
        }
    }
}

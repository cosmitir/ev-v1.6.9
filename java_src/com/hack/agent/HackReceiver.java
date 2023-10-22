package com.hack.agent;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.hack.opensdk.Cmd;
/* loaded from: classes2.dex */
public class HackReceiver extends BroadcastReceiver {
    private static final String TAG = "HackReceiver";

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Cmd.INSTANCE().exec(123, context, intent);
    }
}

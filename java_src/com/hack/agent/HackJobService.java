package com.hack.agent;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.hack.opensdk.Cmd;
/* loaded from: classes2.dex */
public class HackJobService extends Service {
    private static final String TAG = "HackJobService";

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return (IBinder) Cmd.INSTANCE().exec(92, intent);
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return ((Boolean) Cmd.INSTANCE().exec(93, intent)).booleanValue();
    }
}

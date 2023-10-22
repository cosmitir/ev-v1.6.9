package com.easyvictory.cheto;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.easyvictory.cheto.ISampleInterface;
/* loaded from: classes.dex */
public class IPC_Service extends Service {
    private ISampleInterface.Stub stub = new ISampleInterface.Stub() { // from class: com.easyvictory.cheto.IPC_Service.1
        @Override // com.easyvictory.cheto.ISampleInterface
        public char[] getRowBytes() throws RemoteException {
            try {
                return IPC_Service.this.rowBytes();
            } catch (Throwable unused) {
                return null;
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public native char[] rowBytes();

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.stub;
    }
}

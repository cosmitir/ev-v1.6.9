package com.easyvictory.cheto;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes.dex */
public interface ISampleInterface extends IInterface {

    /* loaded from: classes.dex */
    public static class Default implements ISampleInterface {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.easyvictory.cheto.ISampleInterface
        public char[] getRowBytes() throws RemoteException {
            return null;
        }
    }

    char[] getRowBytes() throws RemoteException;

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements ISampleInterface {
        private static final String DESCRIPTOR = "com.easyvictory.cheto.ISampleInterface";
        static final int TRANSACTION_getRowBytes = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ISampleInterface asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            if (queryLocalInterface != null && (queryLocalInterface instanceof ISampleInterface)) {
                return (ISampleInterface) queryLocalInterface;
            }
            return new Proxy(iBinder);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1) {
                if (i == 1598968902) {
                    parcel2.writeString(DESCRIPTOR);
                    return true;
                }
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(DESCRIPTOR);
            char[] rowBytes = getRowBytes();
            parcel2.writeNoException();
            parcel2.writeCharArray(rowBytes);
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public static class Proxy implements ISampleInterface {
            public static ISampleInterface sDefaultImpl;
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.easyvictory.cheto.ISampleInterface
            public char[] getRowBytes() throws RemoteException {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, obtain, obtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getRowBytes();
                    }
                    obtain2.readException();
                    return obtain2.createCharArray();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ISampleInterface iSampleInterface) {
            if (Proxy.sDefaultImpl == null) {
                if (iSampleInterface != null) {
                    Proxy.sDefaultImpl = iSampleInterface;
                    return true;
                }
                return false;
            }
            throw new IllegalStateException("setDefaultImpl() called twice");
        }

        public static ISampleInterface getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}

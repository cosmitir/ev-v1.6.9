package com.hack.opensdk;

import com.hack.utils.RefUtils;
import com.hack.utils.Singleton;
/* loaded from: classes2.dex */
public class Cmd {
    private static final boolean DEBUG = false;
    private static final String ENGINE_CMD_CLASS = "com.core.Cmd";
    private static final String TAG = "Cmd";
    private static Singleton<Cmd> singleton = new Singleton<Cmd>() { // from class: com.hack.opensdk.Cmd.1
        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.hack.utils.Singleton
        public Cmd create() {
            return new Cmd();
        }
    };
    private RefUtils.MethodRef mEngineExecMethod;

    public static Cmd INSTANCE() {
        return singleton.get();
    }

    private Cmd() {
        Class cls;
        try {
            cls = Class.forName(ENGINE_CMD_CLASS);
        } catch (ClassNotFoundException unused) {
            cls = null;
        }
        if (cls == null) {
            try {
                cls = HackRuntime.getHackClassLoader().loadClass(ENGINE_CMD_CLASS);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
        this.mEngineExecMethod = new RefUtils.MethodRef(cls, true, "exec", new Class[]{Integer.TYPE, Object[].class});
    }

    public Object exec(int i, Object... objArr) {
        return this.mEngineExecMethod.invoke(null, Integer.valueOf(i), objArr);
    }
}

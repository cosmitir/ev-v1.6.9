package androidx.profileinstaller;

import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes.dex */
class DexProfileData {
    final int classSetSize;
    final HashSet<Integer> classes;
    final long dexChecksum;
    final int hotMethodRegionSize;
    final String key;
    final HashMap<Integer, Integer> methods;
    final int numMethodIds;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DexProfileData(String key, long dexChecksum, int classSetSize, int hotMethodRegionSize, int numMethodIds, HashSet<Integer> classes, HashMap<Integer, Integer> methods) {
        this.key = key;
        this.dexChecksum = dexChecksum;
        this.classSetSize = classSetSize;
        this.hotMethodRegionSize = hotMethodRegionSize;
        this.numMethodIds = numMethodIds;
        this.classes = classes;
        this.methods = methods;
    }
}

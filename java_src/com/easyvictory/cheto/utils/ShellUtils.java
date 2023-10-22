package com.easyvictory.cheto.utils;

import java.util.List;
/* loaded from: classes.dex */
public class ShellUtils {
    public static final String COMMAND_EXIT = "exit\n";
    public static final String COMMAND_LINE_END = "\n";
    public static final String COMMAND_SH = "sh";
    public static final String COMMAND_SU = "su";

    private ShellUtils() {
        throw new AssertionError();
    }

    public static boolean checkRootPermission() {
        return execCommand("echo root", true, false).result == 0;
    }

    public static CommandResult execCommand(String str, boolean z) {
        return execCommand(new String[]{str}, z, true);
    }

    public static CommandResult execCommand(List<String> list, boolean z) {
        return execCommand(list == null ? null : (String[]) list.toArray(new String[0]), z, true);
    }

    public static CommandResult execCommand(String[] strArr, boolean z) {
        return execCommand(strArr, z, true);
    }

    public static CommandResult execCommand(String str, boolean z, boolean z2) {
        return execCommand(new String[]{str}, z, z2);
    }

    public static CommandResult execCommand(List<String> list, boolean z, boolean z2) {
        return execCommand(list == null ? null : (String[]) list.toArray(new String[0]), z, z2);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:(12:6|7|(1:9)(1:120)|10|11|12|13|14|15|(4:18|(2:20|21)(2:23|24)|22|16)|25|26)|(11:28|29|30|(3:32|33|(1:35)(0))|37|(1:39)|(1:42)|43|(1:45)|46|47)(1:103)|36|37|(0)|(0)|43|(0)|46|47) */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ac, code lost:
        r10 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00ad, code lost:
        r10.printStackTrace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00f7, code lost:
        if (r10 == null) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0114, code lost:
        if (r10 == 0) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0116, code lost:
        r10.destroy();
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0119, code lost:
        r8 = r9;
        r1 = r2;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:112:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x00e8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0105 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00a8 A[Catch: IOException -> 0x00ac, TRY_LEAVE, TryCatch #9 {IOException -> 0x00ac, blocks: (B:43:0x00a3, B:45:0x00a8), top: B:123:0x00a3 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x00f0 A[Catch: IOException -> 0x00ec, TRY_LEAVE, TryCatch #8 {IOException -> 0x00ec, blocks: (B:71:0x00e8, B:75:0x00f0), top: B:121:0x00e8 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x010d A[Catch: IOException -> 0x0109, TRY_LEAVE, TryCatch #10 {IOException -> 0x0109, blocks: (B:85:0x0105, B:89:0x010d), top: B:125:0x0105 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0120  */
    /* JADX WARN: Type inference failed for: r10v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12, types: [java.lang.Process] */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v27 */
    /* JADX WARN: Type inference failed for: r10v29 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12, types: [int] */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r1v7, types: [int] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.easyvictory.cheto.utils.ShellUtils.CommandResult execCommand(java.lang.String[] r8, boolean r9, boolean r10) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.easyvictory.cheto.utils.ShellUtils.execCommand(java.lang.String[], boolean, boolean):com.easyvictory.cheto.utils.ShellUtils$CommandResult");
    }

    /* loaded from: classes.dex */
    public static class CommandResult {
        public int result;
        public String successMsg;

        public CommandResult(int i) {
            this.result = i;
        }

        public CommandResult(int i, String str) {
            this.result = i;
            this.successMsg = str;
        }
    }
}

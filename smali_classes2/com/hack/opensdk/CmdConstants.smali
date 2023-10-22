.class public Lcom/hack/opensdk/CmdConstants;
.super Ljava/lang/Object;
.source "CmdConstants.java"


# static fields
.field public static final CMD_AGENT_INTENT_SENDER:I = 0x7b

.field public static final CMD_AGENT_JOB_SERVICE_BIND:I = 0x5c

.field public static final CMD_AGENT_JOB_SERVICE_UNBIND:I = 0x5d

.field public static final CMD_AGENT_PROVIDER_CALL:I = 0x67

.field public static final CMD_APPLICATION_ATTACHBASE:I = 0x1

.field public static final CMD_APPLICATION_ONCREATE:I = 0x2

.field public static final CMD_ASSIST_ACTIVITY_CALL:I = 0xdf

.field public static final CMD_ASSIST_ACTIVITY_CALL2:I = 0xe0

.field public static final CMD_ASSIST_PROVIDER_CALL:I = 0xd5

.field public static final CMD_BINDER_CALLING_UID:I = 0x30d41

.field public static final CMD_CORE_PROVIDER_CALL:I = 0x9a

.field public static final CMD_CORE_PROVIDER_CREATE:I = 0x99

.field public static final CMD_DELETE_PKG_CACHE:I = 0xe

.field public static final CMD_FILE_PROVIDER_MAKE_URI:I = 0xf3

.field public static final CMD_GET_ACTIVITY_INFO:I = 0x18

.field public static final CMD_GET_ALL_USERID:I = 0xa3

.field public static final CMD_GET_ATTRIBUTION_PARCEL:I = 0x30d40

.field public static final CMD_GET_INSTALLED_PKGS:I = 0x19

.field public static final CMD_GET_LAUNCHER_INTENT:I = 0x1b

.field public static final CMD_GET_PACKAGE_INFO:I = 0x15

.field public static final CMD_GET_PKG_SETTINGS:I = 0x1a

.field public static final CMD_GET_RUNTIME_PROPERTIES:I = 0x12f

.field public static final CMD_GET_UNAVAILABLE_PKGS:I = 0x1c

.field public static final CMD_INSTALL_PACKAGE:I = 0xa

.field public static final CMD_KILL_PACKAGE:I = 0xf

.field public static final CMD_PACKAGE_AVAILABLE:I = 0x9

.field public static final CMD_PACKAGE_MAYBE_VISIBLE:I = 0x10

.field public static final CMD_PKG_ALL_USERID:I = 0xa4

.field public static final CMD_QUERY_ACTIVITIES:I = 0x17

.field public static final CMD_QUICK_START_ACTIVITY:I = 0x22

.field public static final CMD_REGISTER_APPLICATION_CALLBACK:I = 0x193

.field public static final CMD_REGISTER_INSTALL_OBSERVER:I = 0x2c

.field public static final CMD_REGISTER_UNINSTALL_OBSERVER:I = 0x2a

.field public static final CMD_REMOVE_PKG_DATA:I = 0xd

.field public static final CMD_RESOLVE_INTENT:I = 0x16

.field public static final CMD_START_ACTIVITY:I = 0x21

.field private static final CMD_START_FIRST:I = 0x0

.field private static final CMD_START_FORTH:I = 0x3

.field public static final CMD_START_PACKAGE:I = 0x20

.field private static final CMD_START_SECOND:I = 0x1

.field private static final CMD_START_THIRD:I = 0x2

.field private static final CMD_STEP_SKIP:I = 0x1

.field public static final CMD_UNINSTALL_PACKAGE:I = 0xb

.field public static final CMD_UNREGISTER_INSTALL_OBSERVER:I = 0x2d

.field public static final CMD_UNREGISTER_UNINSTALL_OBSERVER:I = 0x2b

.field public static final CMD_UPDATA_PACKAGE:I = 0xc

.field public static final CMD_UPDATE_PACKAGE_CONFIGS:I = 0x1d

.field public static MODE_FORCE_INSTALL:I = 0x2

.field public static MODE_INSTALL_ALONE:I = 0x1

.field public static MODE_INSTALL_EXISTING:I = 0x40

.field public static final PKG_INSTALLED_MODE:Ljava/lang/String; = "installed_mode"

.field public static final PKG_SET_REQUEST_ASSISTANT:Ljava/lang/String; = "request_assistant"

.field public static final PKG_SUPPORTED_ABIS:Ljava/lang/String; = "supported_abis"

.field public static final RUNTIME_HACK_CLASSLOADER:Ljava/lang/String; = "hack.runtime.classloader"

.field public static final RUNTIME_PROPERTIES:Ljava/lang/String; = "hack.runtime.properties"

.field public static final RUNTIME_PROPERTIES_APPID:Ljava/lang/String; = "appId"

.field public static final RUNTIME_PROPERTIES_PKG:Ljava/lang/String; = "pkg"

.field public static final RUNTIME_PROPERTIES_PROCESS:Ljava/lang/String; = "process"

.field public static final RUNTIME_PROPERTIES_SPACE:Ljava/lang/String; = "space"

.field public static final TRANSACT_CMD_ACQUIRE_PROVIDER:I = 0x3

.field public static final TRANSACT_CMD_CRASH_REPORT:I = 0x4

.field public static final TRANSACT_CMD_OUTER_INTENT:I = 0x2

.field public static final TRANSACT_CMD_PROCESS_BINDED:I = 0x1

.field public static final TRANSACT_KEY_AUTHORITY:Ljava/lang/String; = "authority"

.field public static final TRANSACT_KEY_CMD:Ljava/lang/String; = "transact_cmd"

.field public static final TRANSACT_KEY_FROM_TOKEN:Ljava/lang/String; = "from_token"

.field public static final TRANSACT_KEY_INTENT:Ljava/lang/String; = "intent"

.field public static final TRANSACT_KEY_OUT_INTENT:Ljava/lang/String; = "outIntent"

.field public static final TRANSACT_KEY_PKG:Ljava/lang/String; = "pkg"

.field public static final TRANSACT_KEY_PROCESS:Ljava/lang/String; = "agent_process"

.field public static final TRANSACT_KEY_RESULT:Ljava/lang/String; = "ret"

.field public static final TRANSACT_KEY_SHELL_PKG:Ljava/lang/String; = "shell_pkg"

.field public static final TRANSACT_KEY_SPACE:Ljava/lang/String; = "space"

.field public static final TRANSACT_PROVIDER_AUTHORITY:Ljava/lang/String; = "com.hack.server.core.TransactProvider"

.field public static final TRANSACT_PROVIDER_METHOD:Ljava/lang/String; = "transact"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class Lcom/easyvictory/cheto/App$3;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lcom/hack/opensdk/HackApi$ApplicationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/App;->monitorApplicationEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easyvictory/cheto/App;


# direct methods
.method constructor <init>(Lcom/easyvictory/cheto/App;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/easyvictory/cheto/App$3;->this$0:Lcom/easyvictory/cheto/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachBaseContext(Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method public onInitAppContext(Ljava/lang/Object;Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p2

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x439b002ae32061ccL    # -9.107014445110201E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide v2, -0x439b003ce32061ccL    # -9.106895331101993E-18

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 170
    iget-object v2, v1, Lcom/easyvictory/cheto/App$3;->this$0:Lcom/easyvictory/cheto/App;

    invoke-static {}, Lcom/easyvictory/cheto/App;->INSTANCE()Lcom/easyvictory/cheto/App;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easyvictory/cheto/App;->access$200(Lcom/easyvictory/cheto/App;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-wide v3, -0x439b003ee32061ccL    # -9.106882096212192E-18

    .line 172
    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 177
    invoke-static {}, Lcom/easyvictory/cheto/App;->INSTANCE()Lcom/easyvictory/cheto/App;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easyvictory/cheto/App;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 188
    invoke-static/range {p2 .. p2}, Lcom/easyvictory/cheto/App;->access$300(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-wide v4, -0x439b004be32061ccL    # -9.106796069428487E-18

    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    :try_start_0
    invoke-static {}, Lcom/easyvictory/cheto/App;->INSTANCE()Lcom/easyvictory/cheto/App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easyvictory/cheto/App;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 191
    new-instance v4, Ldalvik/system/PathClassLoader;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 192
    const-class v3, Lcom/easyvictory/cheto/Entry;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 193
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    const-wide v5, -0x439b0066e32061ccL    # -9.106617398416175E-18

    .line 195
    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-class v8, Landroid/view/View;

    const/4 v10, 0x1

    aput-object v8, v7, v10

    const-class v8, Landroid/view/View;

    const/4 v11, 0x2

    aput-object v8, v7, v11

    const-class v8, Ljava/lang/String;

    const/4 v12, 0x3

    aput-object v8, v7, v12

    const-class v8, Ljava/lang/String;

    const/4 v13, 0x4

    aput-object v8, v7, v13

    const-class v8, Ljava/lang/String;

    const/4 v14, 0x5

    aput-object v8, v7, v14

    const-class v8, Ljava/lang/String;

    const/4 v15, 0x6

    aput-object v8, v7, v15

    const-class v8, Ljava/lang/String;

    const/16 v16, 0x7

    aput-object v8, v7, v16

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 196
    invoke-virtual {v3, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v9

    .line 197
    invoke-static {}, Lcom/easyvictory/cheto/App;->access$400()Landroid/view/View;

    move-result-object v0

    aput-object v0, v5, v10

    invoke-static {}, Lcom/easyvictory/cheto/App;->access$500()Landroid/view/View;

    move-result-object v0

    aput-object v0, v5, v11

    aput-object v2, v5, v12

    invoke-static {}, Lcom/easyvictory/cheto/App;->access$600()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v13

    invoke-static {}, Lcom/easyvictory/cheto/App;->access$700()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v14

    invoke-static {}, Lcom/easyvictory/cheto/App;->access$800()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v15

    invoke-static {}, Lcom/easyvictory/cheto/App;->access$900()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v3, -0x439b0078e32061ccL    # -9.106498284407968E-18

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Release;->getString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/easyvictory/cheto/Logger;->e(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onInstallProviders(Landroid/app/Application;)V
    .locals 0

    return-void
.end method

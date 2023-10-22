.class public Lcom/easyvictory/cheto/utils/ShellUtils;
.super Ljava/lang/Object;
.source "ShellUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easyvictory/cheto/utils/ShellUtils$CommandResult;
    }
.end annotation


# static fields
.field public static final COMMAND_EXIT:Ljava/lang/String; = "exit\n"

.field public static final COMMAND_LINE_END:Ljava/lang/String; = "\n"

.field public static final COMMAND_SH:Ljava/lang/String; = "sh"

.field public static final COMMAND_SU:Ljava/lang/String; = "su"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static checkRootPermission()Z
    .locals 3

    const-string v0, "echo root"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    invoke-static {v0, v1, v2}, Lcom/easyvictory/cheto/utils/ShellUtils;->execCommand(Ljava/lang/String;ZZ)Lcom/easyvictory/cheto/utils/ShellUtils$CommandResult;

    move-result-object v0

    iget v0, v0, Lcom/easyvictory/cheto/utils/ShellUtils$CommandResult;->result:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static execCommand(Ljava/lang/String;Z)Lcom/easyvictory/cheto/utils/ShellUtils$CommandResult;
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 40
    invoke-static {v1, p1, v0}, Lcom/easyvictory/cheto/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/easyvictory/cheto/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand(Ljava/lang/String;ZZ)Lcom/easyvictory/cheto/utils/ShellUtils$CommandResult;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 79
    invoke-static {v0, p1, p2}, Lcom/easyvictory/cheto/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/easyvictory/cheto/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand(Ljava/util/List;Z)Lcom/easyvictory/cheto/utils/ShellUtils$CommandResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/easyvictory/cheto/utils/ShellUtils$CommandResult;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 53
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_0
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/easyvictory/cheto/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/easyvictory/cheto/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand(Ljava/util/List;ZZ)Lcom/easyvictory/cheto/utils/ShellUtils$CommandResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZZ)",
            "Lcom/easyvictory/cheto/utils/ShellUtils$CommandResult;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 93
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/easyvictory/cheto/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/easyvictory/cheto/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand([Ljava/lang/String;Z)Lcom/easyvictory/cheto/utils/ShellUtils$CommandResult;
    .locals 1

    const/4 v0, 0x1

    .line 65
    invoke-static {p0, p1, v0}, Lcom/easyvictory/cheto/utils/ShellUtils;->execCommand([Ljava/lang/String;ZZ)Lcom/easyvictory/cheto/utils/ShellUtils$CommandResult;

    move-result-object p0

    return-object p0
.end method

.method public static execCommand([Ljava/lang/String;ZZ)Lcom/easyvictory/cheto/utils/ShellUtils$CommandResult;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p0, :cond_11

    .line 109
    array-length v2, p0

    if-nez v2, :cond_0

    goto/16 :goto_19

    .line 117
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string/jumbo p1, "su"

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "sh"

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 118
    :try_start_1
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 119
    :try_start_2
    array-length v3, p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v4, 0x0

    :goto_1
    const-string v5, "\n"

    if-ge v4, v3, :cond_3

    :try_start_3
    aget-object v6, p0, v4

    if-nez v6, :cond_2

    goto :goto_2

    .line 123
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 124
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const-string p0, "exit\n"

    .line 127
    invoke-virtual {v2, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 129
    invoke-virtual {p1}, Ljava/lang/Process;->waitFor()I

    move-result v1

    if-eqz p2, :cond_4

    .line 131
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 132
    :try_start_4
    new-instance p2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 134
    :goto_3
    :try_start_5
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_0
    move-exception v3

    move-object v7, p1

    move-object p1, p0

    move-object p0, v3

    move-object v3, v2

    move v2, v1

    move-object v1, p2

    goto :goto_4

    :catch_1
    move-exception v3

    move-object v7, p1

    move-object p1, p0

    move-object p0, v3

    move-object v3, v2

    move v2, v1

    move-object v1, p2

    goto :goto_5

    :catch_2
    move-exception p2

    move-object v3, v2

    move v2, v1

    move-object v1, v0

    move-object v7, p1

    move-object p1, p0

    move-object p0, p2

    :goto_4
    move-object p2, v7

    goto/16 :goto_9

    :catch_3
    move-exception p2

    move-object v3, v2

    move v2, v1

    move-object v1, v0

    move-object v7, p1

    move-object p1, p0

    move-object p0, p2

    :goto_5
    move-object p2, v7

    goto/16 :goto_e

    :cond_4
    move-object p0, v0

    move-object p2, p0

    .line 145
    :cond_5
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    if-eqz p2, :cond_6

    .line 148
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception p2

    .line 151
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_6
    if-eqz p1, :cond_c

    .line 154
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_13

    :catchall_1
    move-exception p0

    move-object p2, v0

    :goto_7
    move-object v0, v2

    goto/16 :goto_15

    :catch_5
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    move-object v3, v2

    move v2, v1

    move-object v1, p1

    goto :goto_9

    :catch_6
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    move-object v3, v2

    move v2, v1

    move-object v1, p1

    goto :goto_e

    :catchall_2
    move-exception p0

    move-object p2, v0

    goto/16 :goto_15

    :catch_7
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    move-object v3, p1

    goto :goto_8

    :catch_8
    move-exception p0

    move-object p2, p1

    move-object p1, v0

    move-object v3, p1

    goto :goto_d

    :catchall_3
    move-exception p0

    move-object p1, v0

    move-object p2, p1

    goto/16 :goto_15

    :catch_9
    move-exception p0

    move-object p1, v0

    move-object p2, p1

    move-object v3, p2

    :goto_8
    move v2, v1

    move-object v1, v3

    .line 141
    :goto_9
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v3, :cond_7

    .line 145
    :try_start_8
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    goto :goto_a

    :catch_a
    move-exception p0

    goto :goto_b

    :cond_7
    :goto_a
    if-eqz v1, :cond_8

    .line 148
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    goto :goto_c

    .line 151
    :goto_b
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_c
    if-eqz p2, :cond_b

    goto :goto_12

    :catch_b
    move-exception p0

    move-object p1, v0

    move-object p2, p1

    move-object v3, p2

    :goto_d
    move v2, v1

    move-object v1, v3

    .line 139
    :goto_e
    :try_start_9
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v3, :cond_9

    .line 145
    :try_start_a
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    goto :goto_f

    :catch_c
    move-exception p0

    goto :goto_10

    :cond_9
    :goto_f
    if-eqz v1, :cond_a

    .line 148
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c

    goto :goto_11

    .line 151
    :goto_10
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_11
    if-eqz p2, :cond_b

    .line 154
    :goto_12
    invoke-virtual {p2}, Ljava/lang/Process;->destroy()V

    :cond_b
    move-object p0, p1

    move v1, v2

    .line 157
    :cond_c
    :goto_13
    new-instance p1, Lcom/easyvictory/cheto/utils/ShellUtils$CommandResult;

    if-nez p0, :cond_d

    goto :goto_14

    :cond_d
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_14
    invoke-direct {p1, v1, v0}, Lcom/easyvictory/cheto/utils/ShellUtils$CommandResult;-><init>(ILjava/lang/String;)V

    return-object p1

    :catchall_4
    move-exception p0

    move-object p1, p2

    move-object p2, v1

    move-object v0, v3

    :goto_15
    if-eqz v0, :cond_e

    .line 145
    :try_start_b
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    goto :goto_16

    :catch_d
    move-exception p2

    goto :goto_17

    :cond_e
    :goto_16
    if-eqz p2, :cond_f

    .line 148
    invoke-virtual {p2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d

    goto :goto_18

    .line 151
    :goto_17
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_f
    :goto_18
    if-eqz p1, :cond_10

    .line 154
    invoke-virtual {p1}, Ljava/lang/Process;->destroy()V

    .line 156
    :cond_10
    throw p0

    .line 110
    :cond_11
    :goto_19
    new-instance p0, Lcom/easyvictory/cheto/utils/ShellUtils$CommandResult;

    invoke-direct {p0, v1, v0}, Lcom/easyvictory/cheto/utils/ShellUtils$CommandResult;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

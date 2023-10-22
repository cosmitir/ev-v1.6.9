.class Lcom/easyvictory/cheto/Entry$5;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/Entry;->tkSht(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$object:J


# direct methods
.method constructor <init>(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 295
    iput-wide p1, p0, Lcom/easyvictory/cheto/Entry$5;->val$object:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 298
    iget-wide v0, p0, Lcom/easyvictory/cheto/Entry$5;->val$object:J

    invoke-static {v0, v1}, Lcom/easyvictory/cheto/Entry;->access$400(J)V

    return-void
.end method

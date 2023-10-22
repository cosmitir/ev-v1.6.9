.class Lcom/easyvictory/cheto/Entry$4;
.super Ljava/lang/Object;
.source "Entry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easyvictory/cheto/Entry;->noPkt(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$object:J

.field final synthetic val$pktidx:I


# direct methods
.method constructor <init>(JI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 191
    iput-wide p1, p0, Lcom/easyvictory/cheto/Entry$4;->val$object:J

    iput p3, p0, Lcom/easyvictory/cheto/Entry$4;->val$pktidx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 194
    iget-wide v0, p0, Lcom/easyvictory/cheto/Entry$4;->val$object:J

    iget v2, p0, Lcom/easyvictory/cheto/Entry$4;->val$pktidx:I

    invoke-static {v0, v1, v2}, Lcom/easyvictory/cheto/Entry;->access$300(JI)V

    return-void
.end method

###### Class com.json.wa (com.ironsource.wa)
.class public Lcom/ironsource/wa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/ironsource/wa;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/wa;->b:[B

    return-void
.end method

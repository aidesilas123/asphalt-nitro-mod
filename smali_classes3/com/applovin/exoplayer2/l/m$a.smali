###### Class com.applovin.exoplayer2.l.m.a (com.applovin.exoplayer2.l.m$a)
.class public final Lcom/applovin/exoplayer2/l/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/l/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final acb:Landroid/util/SparseBooleanArray;

.field private ih:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/l/m$a;->acb:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/exoplayer2/l/m;)Lcom/applovin/exoplayer2/l/m$a;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/m;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    invoke-virtual {p1, v0}, Lcom/applovin/exoplayer2/l/m;->fn(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/applovin/exoplayer2/l/m$a;->fo(I)Lcom/applovin/exoplayer2/l/m$a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-object p0
.end method

.method public fo(I)Lcom/applovin/exoplayer2/l/m$a;
    .registers 4

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/l/m$a;->ih:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/l/m$a;->acb:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    return-object p0
.end method

.method public varargs h([I)Lcom/applovin/exoplayer2/l/m$a;
    .registers 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_c

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/applovin/exoplayer2/l/m$a;->fo(I)Lcom/applovin/exoplayer2/l/m$a;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_c
    return-object p0
.end method

.method public o(IZ)Lcom/applovin/exoplayer2/l/m$a;
    .registers 3

    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Lcom/applovin/exoplayer2/l/m$a;->fo(I)Lcom/applovin/exoplayer2/l/m$a;

    move-result-object p1

    return-object p1

    :cond_7
    return-object p0
.end method

.method public oV()Lcom/applovin/exoplayer2/l/m;
    .registers 4

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/l/m$a;->ih:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkState(Z)V

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/l/m$a;->ih:Z

    new-instance v0, Lcom/applovin/exoplayer2/l/m;

    iget-object v1, p0, Lcom/applovin/exoplayer2/l/m$a;->acb:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applovin/exoplayer2/l/m;-><init>(Landroid/util/SparseBooleanArray;Lcom/applovin/exoplayer2/l/m$1;)V

    return-object v0
.end method

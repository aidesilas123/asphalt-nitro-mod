###### Class com.applovin.exoplayer2.e.i.ad (com.applovin.exoplayer2.e.i.ad)
.class public interface abstract Lcom/applovin/exoplayer2/e/i/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/i/ad$d;,
        Lcom/applovin/exoplayer2/e/i/ad$a;,
        Lcom/applovin/exoplayer2/e/i/ad$b;,
        Lcom/applovin/exoplayer2/e/i/ad$c;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/applovin/exoplayer2/l/ag;Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V
.end method

.method public abstract jb()V
.end method

.method public abstract p(Lcom/applovin/exoplayer2/l/y;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/applovin/exoplayer2/ai;
        }
    .end annotation
.end method

###### Class com.applovin.exoplayer2.e.i.ad.a (com.applovin.exoplayer2.e.i.ad$a)
.class public final Lcom/applovin/exoplayer2/e/i/ad$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/i/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final FQ:[B

.field public final bs:I

.field public final dq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I[B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/ad$a;->dq:Ljava/lang/String;

    iput p2, p0, Lcom/applovin/exoplayer2/e/i/ad$a;->bs:I

    iput-object p3, p0, Lcom/applovin/exoplayer2/e/i/ad$a;->FQ:[B

    return-void
.end method

###### Class com.applovin.exoplayer2.e.i.ad.b (com.applovin.exoplayer2.e.i.ad$b)
.class public final Lcom/applovin/exoplayer2/e/i/ad$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/i/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final FR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/e/i/ad$a;",
            ">;"
        }
    .end annotation
.end field

.field public final FT:[B

.field public final dq:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final ir:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/List;[B)V
    .registers 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/applovin/exoplayer2/e/i/ad$a;",
            ">;[B)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/ad$b;->ir:I

    iput-object p2, p0, Lcom/applovin/exoplayer2/e/i/ad$b;->dq:Ljava/lang/String;

    if-nez p3, :cond_e

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_12

    :cond_e
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    :goto_12
    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/ad$b;->FR:Ljava/util/List;

    iput-object p4, p0, Lcom/applovin/exoplayer2/e/i/ad$b;->FT:[B

    return-void
.end method

###### Class com.applovin.exoplayer2.e.i.ad.c (com.applovin.exoplayer2.e.i.ad$c)
.class public interface abstract Lcom/applovin/exoplayer2/e/i/ad$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/i/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a(ILcom/applovin/exoplayer2/e/i/ad$b;)Lcom/applovin/exoplayer2/e/i/ad;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract jn()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/applovin/exoplayer2/e/i/ad;",
            ">;"
        }
    .end annotation
.end method

###### Class com.applovin.exoplayer2.e.i.ad.d (com.applovin.exoplayer2.e.i.ad$d)
.class public final Lcom/applovin/exoplayer2/e/i/ad$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/i/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private Ct:Ljava/lang/String;

.field private final FU:Ljava/lang/String;

.field private final FV:I

.field private final FW:I

.field private FX:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    const/high16 v0, -0x80000000

    invoke-direct {p0, v0, p1, p2}, Lcom/applovin/exoplayer2/e/i/ad$d;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    :cond_1b
    move-object p1, v0

    :goto_1c
    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/ad$d;->FU:Ljava/lang/String;

    iput p2, p0, Lcom/applovin/exoplayer2/e/i/ad$d;->FV:I

    iput p3, p0, Lcom/applovin/exoplayer2/e/i/ad$d;->FW:I

    iput v1, p0, Lcom/applovin/exoplayer2/e/i/ad$d;->FX:I

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/ad$d;->Ct:Ljava/lang/String;

    return-void
.end method

.method private jB()V
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/ad$d;->FX:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_7

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "generateNewId() must be called before retrieving ids."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public jA()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/ad$d;->jB()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/ad$d;->Ct:Ljava/lang/String;

    return-object v0
.end method

.method public jy()V
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/ad$d;->FX:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/ad$d;->FV:I

    goto :goto_c

    :cond_9
    iget v1, p0, Lcom/applovin/exoplayer2/e/i/ad$d;->FW:I

    add-int/2addr v0, v1

    :goto_c
    iput v0, p0, Lcom/applovin/exoplayer2/e/i/ad$d;->FX:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/ad$d;->FU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/exoplayer2/e/i/ad$d;->FX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/ad$d;->Ct:Ljava/lang/String;

    return-void
.end method

.method public jz()I
    .registers 2

    invoke-direct {p0}, Lcom/applovin/exoplayer2/e/i/ad$d;->jB()V

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/ad$d;->FX:I

    return v0
.end method

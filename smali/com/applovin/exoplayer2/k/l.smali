###### Class com.applovin.exoplayer2.k.l (com.applovin.exoplayer2.k.l)
.class public final Lcom/applovin/exoplayer2/k/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/k/l$a;
    }
.end annotation


# instance fields
.field public final Jx:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final ZA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ZB:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final ZC:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final Zx:J

.field public final Zy:I

.field public final Zz:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final ef:Landroid/net/Uri;

.field public final jF:I

.field public final uc:J

.field public final wC:J


# direct methods
.method private constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V
    .registers 29
    .param p5    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "JI[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JJ",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p5

    move-wide/from16 v4, p7

    move-wide/from16 v6, p9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-long v8, v1, v4

    const/4 v10, 0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    cmp-long v14, v8, v12

    if-ltz v14, :cond_18

    const/4 v14, 0x1

    goto :goto_19

    :cond_18
    const/4 v14, 0x0

    :goto_19
    invoke-static {v14}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    cmp-long v14, v4, v12

    if-ltz v14, :cond_22

    const/4 v14, 0x1

    goto :goto_23

    :cond_22
    const/4 v14, 0x0

    :goto_23
    invoke-static {v14}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    cmp-long v14, v6, v12

    if-gtz v14, :cond_32

    const-wide/16 v12, -0x1

    cmp-long v14, v6, v12

    if-nez v14, :cond_31

    goto :goto_32

    :cond_31
    const/4 v10, 0x0

    :cond_32
    :goto_32
    invoke-static {v10}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    move-object/from16 v10, p1

    iput-object v10, v0, Lcom/applovin/exoplayer2/k/l;->ef:Landroid/net/Uri;

    iput-wide v1, v0, Lcom/applovin/exoplayer2/k/l;->Zx:J

    move/from16 v1, p4

    iput v1, v0, Lcom/applovin/exoplayer2/k/l;->Zy:I

    if-eqz v3, :cond_45

    array-length v1, v3

    if-eqz v1, :cond_45

    goto :goto_47

    :cond_45
    const/4 v1, 0x0

    move-object v3, v1

    :goto_47
    iput-object v3, v0, Lcom/applovin/exoplayer2/k/l;->Zz:[B

    new-instance v1, Ljava/util/HashMap;

    move-object/from16 v2, p6

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/applovin/exoplayer2/k/l;->ZA:Ljava/util/Map;

    iput-wide v4, v0, Lcom/applovin/exoplayer2/k/l;->uc:J

    iput-wide v8, v0, Lcom/applovin/exoplayer2/k/l;->ZB:J

    iput-wide v6, v0, Lcom/applovin/exoplayer2/k/l;->wC:J

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/applovin/exoplayer2/k/l;->Jx:Ljava/lang/String;

    move/from16 v1, p12

    iput v1, v0, Lcom/applovin/exoplayer2/k/l;->jF:I

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/applovin/exoplayer2/k/l;->ZC:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;Lcom/applovin/exoplayer2/k/l$1;)V
    .registers 15

    invoke-direct/range {p0 .. p13}, Lcom/applovin/exoplayer2/k/l;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static ff(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    const/4 v0, 0x2

    if-eq p0, v0, :cond_12

    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    const-string p0, "HEAD"

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_12
    const-string p0, "POST"

    return-object p0

    :cond_15
    const-string p0, "GET"

    return-object p0
.end method


# virtual methods
.method public fg(I)Z
    .registers 3

    iget v0, p0, Lcom/applovin/exoplayer2/k/l;->jF:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    return p1
.end method

.method public final oh()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lcom/applovin/exoplayer2/k/l;->Zy:I

    invoke-static {v0}, Lcom/applovin/exoplayer2/k/l;->ff(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public oi()Lcom/applovin/exoplayer2/k/l$a;
    .registers 3

    new-instance v0, Lcom/applovin/exoplayer2/k/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/exoplayer2/k/l$a;-><init>(Lcom/applovin/exoplayer2/k/l;Lcom/applovin/exoplayer2/k/l$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataSpec["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/k/l;->oh()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/exoplayer2/k/l;->ef:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/applovin/exoplayer2/k/l;->uc:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/applovin/exoplayer2/k/l;->wC:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/exoplayer2/k/l;->Jx:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/applovin/exoplayer2/k/l;->jF:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.applovin.exoplayer2.k.l.AnonymousClass1 (com.applovin.exoplayer2.k.l$1)
.class synthetic Lcom/applovin/exoplayer2/k/l$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/k/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.applovin.exoplayer2.k.l.a (com.applovin.exoplayer2.k.l$a)
.class public final Lcom/applovin/exoplayer2/k/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/k/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private Jx:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ZA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ZC:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private Zx:J

.field private Zy:I

.field private Zz:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ef:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private jF:I

.field private uc:J

.field private wC:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/applovin/exoplayer2/k/l$a;->Zy:I

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/l$a;->ZA:Ljava/util/Map;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/applovin/exoplayer2/k/l$a;->wC:J

    return-void
.end method

.method private constructor <init>(Lcom/applovin/exoplayer2/k/l;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/applovin/exoplayer2/k/l;->ef:Landroid/net/Uri;

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/l$a;->ef:Landroid/net/Uri;

    iget-wide v0, p1, Lcom/applovin/exoplayer2/k/l;->Zx:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/k/l$a;->Zx:J

    iget v0, p1, Lcom/applovin/exoplayer2/k/l;->Zy:I

    iput v0, p0, Lcom/applovin/exoplayer2/k/l$a;->Zy:I

    iget-object v0, p1, Lcom/applovin/exoplayer2/k/l;->Zz:[B

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/l$a;->Zz:[B

    iget-object v0, p1, Lcom/applovin/exoplayer2/k/l;->ZA:Ljava/util/Map;

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/l$a;->ZA:Ljava/util/Map;

    iget-wide v0, p1, Lcom/applovin/exoplayer2/k/l;->uc:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/k/l$a;->uc:J

    iget-wide v0, p1, Lcom/applovin/exoplayer2/k/l;->wC:J

    iput-wide v0, p0, Lcom/applovin/exoplayer2/k/l$a;->wC:J

    iget-object v0, p1, Lcom/applovin/exoplayer2/k/l;->Jx:Ljava/lang/String;

    iput-object v0, p0, Lcom/applovin/exoplayer2/k/l$a;->Jx:Ljava/lang/String;

    iget v0, p1, Lcom/applovin/exoplayer2/k/l;->jF:I

    iput v0, p0, Lcom/applovin/exoplayer2/k/l$a;->jF:I

    iget-object p1, p1, Lcom/applovin/exoplayer2/k/l;->ZC:Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/l$a;->ZC:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/exoplayer2/k/l;Lcom/applovin/exoplayer2/k/l$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/applovin/exoplayer2/k/l$a;-><init>(Lcom/applovin/exoplayer2/k/l;)V

    return-void
.end method


# virtual methods
.method public G([B)Lcom/applovin/exoplayer2/k/l$a;
    .registers 2
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/l$a;->Zz:[B

    return-object p0
.end method

.method public aK(Ljava/lang/String;)Lcom/applovin/exoplayer2/k/l$a;
    .registers 2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/l$a;->ef:Landroid/net/Uri;

    return-object p0
.end method

.method public aL(Ljava/lang/String;)Lcom/applovin/exoplayer2/k/l$a;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/l$a;->Jx:Ljava/lang/String;

    return-object p0
.end method

.method public bl(J)Lcom/applovin/exoplayer2/k/l$a;
    .registers 3

    iput-wide p1, p0, Lcom/applovin/exoplayer2/k/l$a;->uc:J

    return-object p0
.end method

.method public d(Ljava/util/Map;)Lcom/applovin/exoplayer2/k/l$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/applovin/exoplayer2/k/l$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/l$a;->ZA:Ljava/util/Map;

    return-object p0
.end method

.method public e(Landroid/net/Uri;)Lcom/applovin/exoplayer2/k/l$a;
    .registers 2

    iput-object p1, p0, Lcom/applovin/exoplayer2/k/l$a;->ef:Landroid/net/Uri;

    return-object p0
.end method

.method public fh(I)Lcom/applovin/exoplayer2/k/l$a;
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/k/l$a;->Zy:I

    return-object p0
.end method

.method public fi(I)Lcom/applovin/exoplayer2/k/l$a;
    .registers 2

    iput p1, p0, Lcom/applovin/exoplayer2/k/l$a;->jF:I

    return-object p0
.end method

.method public oj()Lcom/applovin/exoplayer2/k/l;
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/applovin/exoplayer2/k/l$a;->ef:Landroid/net/Uri;

    const-string v2, "The uri must be set."

    invoke-static {v1, v2}, Lcom/applovin/exoplayer2/l/a;->q(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/applovin/exoplayer2/k/l;

    iget-object v4, v0, Lcom/applovin/exoplayer2/k/l$a;->ef:Landroid/net/Uri;

    iget-wide v5, v0, Lcom/applovin/exoplayer2/k/l$a;->Zx:J

    iget v7, v0, Lcom/applovin/exoplayer2/k/l$a;->Zy:I

    iget-object v8, v0, Lcom/applovin/exoplayer2/k/l$a;->Zz:[B

    iget-object v9, v0, Lcom/applovin/exoplayer2/k/l$a;->ZA:Ljava/util/Map;

    iget-wide v10, v0, Lcom/applovin/exoplayer2/k/l$a;->uc:J

    iget-wide v12, v0, Lcom/applovin/exoplayer2/k/l$a;->wC:J

    iget-object v14, v0, Lcom/applovin/exoplayer2/k/l$a;->Jx:Ljava/lang/String;

    iget v15, v0, Lcom/applovin/exoplayer2/k/l$a;->jF:I

    iget-object v2, v0, Lcom/applovin/exoplayer2/k/l$a;->ZC:Ljava/lang/Object;

    const/16 v17, 0x0

    move-object v3, v1

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v17}, Lcom/applovin/exoplayer2/k/l;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;Lcom/applovin/exoplayer2/k/l$1;)V

    return-object v1
.end method

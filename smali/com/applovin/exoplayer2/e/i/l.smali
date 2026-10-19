###### Class com.applovin.exoplayer2.e.i.l (com.applovin.exoplayer2.e.i.l)
.class public final Lcom/applovin/exoplayer2/e/i/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/i/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/i/l$b;,
        Lcom/applovin/exoplayer2/e/i/l$a;
    }
.end annotation


# static fields
.field private static final Dr:[F


# instance fields
.field private Ct:Ljava/lang/String;

.field private final Dc:Lcom/applovin/exoplayer2/e/i/af;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final Dd:Lcom/applovin/exoplayer2/l/y;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final De:Lcom/applovin/exoplayer2/e/i/r;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final Df:[Z

.field private Dh:J

.field private Dk:J

.field private final Ds:Lcom/applovin/exoplayer2/e/i/l$a;

.field private Dt:Lcom/applovin/exoplayer2/e/i/l$b;

.field private vJ:Z

.field private wl:Lcom/applovin/exoplayer2/e/x;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x7

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Lcom/applovin/exoplayer2/e/i/l;->Dr:[F

    return-void

    nop

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/exoplayer2/e/i/l;-><init>(Lcom/applovin/exoplayer2/e/i/af;)V

    return-void
.end method

.method constructor <init>(Lcom/applovin/exoplayer2/e/i/af;)V
    .registers 6
    .param p1    # Lcom/applovin/exoplayer2/e/i/af;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/l;->Dc:Lcom/applovin/exoplayer2/e/i/af;

    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/l;->Df:[Z

    new-instance v0, Lcom/applovin/exoplayer2/e/i/l$a;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/applovin/exoplayer2/e/i/l$a;-><init>(I)V

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/l;->Ds:Lcom/applovin/exoplayer2/e/i/l$a;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/applovin/exoplayer2/e/i/l;->Dk:J

    if-eqz p1, :cond_2d

    new-instance p1, Lcom/applovin/exoplayer2/e/i/r;

    const/16 v0, 0xb2

    invoke-direct {p1, v0, v1}, Lcom/applovin/exoplayer2/e/i/r;-><init>(II)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/l;->De:Lcom/applovin/exoplayer2/e/i/r;

    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/l;->Dd:Lcom/applovin/exoplayer2/l/y;

    goto :goto_32

    :cond_2d
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/l;->De:Lcom/applovin/exoplayer2/e/i/r;

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/l;->Dd:Lcom/applovin/exoplayer2/l/y;

    :goto_32
    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/e/i/l$a;ILjava/lang/String;)Lcom/applovin/exoplayer2/v;
    .registers 11

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/l$a;->tf:[B

    iget p0, p0, Lcom/applovin/exoplayer2/e/i/l$a;->fR:I

    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    new-instance v0, Lcom/applovin/exoplayer2/l/x;

    invoke-direct {v0, p0}, Lcom/applovin/exoplayer2/l/x;-><init>([B)V

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/l/x;->fz(I)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/l/x;->fz(I)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ph()V

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_29

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_29
    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result p1

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v4, "Invalid aspect ratio"

    const-string v5, "H263Reader"

    const/16 v6, 0xf

    if-ne p1, v6, :cond_4a

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result p1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v1

    if-nez v1, :cond_45

    invoke-static {v5, v4}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    :cond_45
    int-to-float p1, p1

    int-to-float v1, v1

    div-float/2addr p1, v1

    move v2, p1

    goto :goto_55

    :cond_4a
    sget-object v1, Lcom/applovin/exoplayer2/e/i/l;->Dr:[F

    array-length v7, v1

    if-ge p1, v7, :cond_52

    aget v2, v1, p1

    goto :goto_55

    :cond_52
    invoke-static {v5, v4}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    :goto_55
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result p1

    const/4 v1, 0x2

    if-eqz p1, :cond_8c

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result p1

    if-eqz p1, :cond_8c

    invoke-virtual {v0, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ph()V

    invoke-virtual {v0, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ph()V

    invoke-virtual {v0, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ph()V

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    const/16 p1, 0xb

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ph()V

    invoke-virtual {v0, v6}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ph()V

    :cond_8c
    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result p1

    if-eqz p1, :cond_97

    const-string p1, "Unhandled video object layer shape"

    invoke-static {v5, p1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ph()V

    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result p1

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ph()V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ik()Z

    move-result v1

    if-eqz v1, :cond_be

    if-nez p1, :cond_b1

    const-string p1, "Invalid vop_increment_time_resolution"

    invoke-static {v5, p1}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_be

    :cond_b1
    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    :goto_b4
    if-lez p1, :cond_bb

    add-int/lit8 v1, v1, 0x1

    shr-int/lit8 p1, p1, 0x1

    goto :goto_b4

    :cond_bb
    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/l/x;->bR(I)V

    :cond_be
    :goto_be
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ph()V

    const/16 p1, 0xd

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result v1

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ph()V

    invoke-virtual {v0, p1}, Lcom/applovin/exoplayer2/l/x;->bQ(I)I

    move-result p1

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ph()V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/x;->ph()V

    new-instance v0, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {v0}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    invoke-virtual {v0, p2}, Lcom/applovin/exoplayer2/v$a;->g(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object p2

    const-string v0, "video/mp4v-es"

    invoke-virtual {p2, v0}, Lcom/applovin/exoplayer2/v$a;->m(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/applovin/exoplayer2/v$a;->J(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/applovin/exoplayer2/v$a;->K(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/applovin/exoplayer2/v$a;->e(F)Lcom/applovin/exoplayer2/v$a;

    move-result-object p1

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/applovin/exoplayer2/v$a;->c(Ljava/util/List;)Lcom/applovin/exoplayer2/v$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public K(Lcom/applovin/exoplayer2/l/y;)V
    .registers 15

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/l;->Dt:Lcom/applovin/exoplayer2/e/i/l$b;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/l;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v0

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v1

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v2

    iget-wide v3, p0, Lcom/applovin/exoplayer2/e/i/l;->Dh:J

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/applovin/exoplayer2/e/i/l;->Dh:J

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/i/l;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v4

    invoke-interface {v3, p1, v4}, Lcom/applovin/exoplayer2/e/x;->c(Lcom/applovin/exoplayer2/l/y;I)V

    :goto_29
    iget-object v3, p0, Lcom/applovin/exoplayer2/e/i/l;->Df:[Z

    invoke-static {v2, v0, v1, v3}, Lcom/applovin/exoplayer2/l/v;->a([BII[Z)I

    move-result v3

    if-ne v3, v1, :cond_47

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/l;->vJ:Z

    if-nez p1, :cond_3a

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/l;->Ds:Lcom/applovin/exoplayer2/e/i/l$a;

    invoke-virtual {p1, v2, v0, v1}, Lcom/applovin/exoplayer2/e/i/l$a;->e([BII)V

    :cond_3a
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/l;->Dt:Lcom/applovin/exoplayer2/e/i/l$b;

    invoke-virtual {p1, v2, v0, v1}, Lcom/applovin/exoplayer2/e/i/l$b;->e([BII)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/l;->De:Lcom/applovin/exoplayer2/e/i/r;

    if-eqz p1, :cond_46

    invoke-virtual {p1, v2, v0, v1}, Lcom/applovin/exoplayer2/e/i/r;->g([BII)V

    :cond_46
    return-void

    :cond_47
    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v4

    add-int/lit8 v5, v3, 0x3

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    sub-int v6, v3, v0

    iget-boolean v7, p0, Lcom/applovin/exoplayer2/e/i/l;->vJ:Z

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v7, :cond_84

    if-lez v6, :cond_60

    iget-object v7, p0, Lcom/applovin/exoplayer2/e/i/l;->Ds:Lcom/applovin/exoplayer2/e/i/l$a;

    invoke-virtual {v7, v2, v0, v3}, Lcom/applovin/exoplayer2/e/i/l$a;->e([BII)V

    :cond_60
    if-gez v6, :cond_64

    neg-int v7, v6

    goto :goto_65

    :cond_64
    const/4 v7, 0x0

    :goto_65
    iget-object v10, p0, Lcom/applovin/exoplayer2/e/i/l;->Ds:Lcom/applovin/exoplayer2/e/i/l$a;

    invoke-virtual {v10, v4, v7}, Lcom/applovin/exoplayer2/e/i/l$a;->B(II)Z

    move-result v7

    if-eqz v7, :cond_84

    iget-object v7, p0, Lcom/applovin/exoplayer2/e/i/l;->wl:Lcom/applovin/exoplayer2/e/x;

    iget-object v10, p0, Lcom/applovin/exoplayer2/e/i/l;->Ds:Lcom/applovin/exoplayer2/e/i/l$a;

    iget v11, v10, Lcom/applovin/exoplayer2/e/i/l$a;->Du:I

    iget-object v12, p0, Lcom/applovin/exoplayer2/e/i/l;->Ct:Ljava/lang/String;

    invoke-static {v12}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v10, v11, v12}, Lcom/applovin/exoplayer2/e/i/l;->a(Lcom/applovin/exoplayer2/e/i/l$a;ILjava/lang/String;)Lcom/applovin/exoplayer2/v;

    move-result-object v10

    invoke-interface {v7, v10}, Lcom/applovin/exoplayer2/e/x;->j(Lcom/applovin/exoplayer2/v;)V

    iput-boolean v8, p0, Lcom/applovin/exoplayer2/e/i/l;->vJ:Z

    :cond_84
    iget-object v7, p0, Lcom/applovin/exoplayer2/e/i/l;->Dt:Lcom/applovin/exoplayer2/e/i/l$b;

    invoke-virtual {v7, v2, v0, v3}, Lcom/applovin/exoplayer2/e/i/l$b;->e([BII)V

    iget-object v7, p0, Lcom/applovin/exoplayer2/e/i/l;->De:Lcom/applovin/exoplayer2/e/i/r;

    if-eqz v7, :cond_d7

    if-lez v6, :cond_93

    invoke-virtual {v7, v2, v0, v3}, Lcom/applovin/exoplayer2/e/i/r;->g([BII)V

    goto :goto_94

    :cond_93
    neg-int v9, v6

    :goto_94
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/l;->De:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0, v9}, Lcom/applovin/exoplayer2/e/i/r;->cC(I)Z

    move-result v0

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/l;->De:Lcom/applovin/exoplayer2/e/i/r;

    iget-object v6, v0, Lcom/applovin/exoplayer2/e/i/r;->EJ:[B

    iget v0, v0, Lcom/applovin/exoplayer2/e/i/r;->EK:I

    invoke-static {v6, v0}, Lcom/applovin/exoplayer2/l/v;->i([BI)I

    move-result v0

    iget-object v6, p0, Lcom/applovin/exoplayer2/e/i/l;->Dd:Lcom/applovin/exoplayer2/l/y;

    invoke-static {v6}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/applovin/exoplayer2/l/y;

    iget-object v7, p0, Lcom/applovin/exoplayer2/e/i/l;->De:Lcom/applovin/exoplayer2/e/i/r;

    iget-object v7, v7, Lcom/applovin/exoplayer2/e/i/r;->EJ:[B

    invoke-virtual {v6, v7, v0}, Lcom/applovin/exoplayer2/l/y;->l([BI)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/l;->Dc:Lcom/applovin/exoplayer2/e/i/af;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/exoplayer2/e/i/af;

    iget-wide v6, p0, Lcom/applovin/exoplayer2/e/i/l;->Dk:J

    iget-object v9, p0, Lcom/applovin/exoplayer2/e/i/l;->Dd:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {v0, v6, v7, v9}, Lcom/applovin/exoplayer2/e/i/af;->a(JLcom/applovin/exoplayer2/l/y;)V

    :cond_c4
    const/16 v0, 0xb2

    if-ne v4, v0, :cond_d7

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v0

    add-int/lit8 v6, v3, 0x2

    aget-byte v0, v0, v6

    if-ne v0, v8, :cond_d7

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/l;->De:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0, v4}, Lcom/applovin/exoplayer2/e/i/r;->cB(I)V

    :cond_d7
    sub-int v0, v1, v3

    iget-wide v6, p0, Lcom/applovin/exoplayer2/e/i/l;->Dh:J

    int-to-long v8, v0

    sub-long/2addr v6, v8

    iget-object v3, p0, Lcom/applovin/exoplayer2/e/i/l;->Dt:Lcom/applovin/exoplayer2/e/i/l$b;

    iget-boolean v8, p0, Lcom/applovin/exoplayer2/e/i/l;->vJ:Z

    invoke-virtual {v3, v6, v7, v0, v8}, Lcom/applovin/exoplayer2/e/i/l$b;->a(JIZ)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/l;->Dt:Lcom/applovin/exoplayer2/e/i/l$b;

    iget-wide v6, p0, Lcom/applovin/exoplayer2/e/i/l;->Dk:J

    invoke-virtual {v0, v4, v6, v7}, Lcom/applovin/exoplayer2/e/i/l$b;->g(IJ)V

    move v0, v5

    goto/16 :goto_29
.end method

.method public a(Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V
    .registers 5

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jy()V

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/l;->Ct:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jz()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/applovin/exoplayer2/e/j;->y(II)Lcom/applovin/exoplayer2/e/x;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/l;->wl:Lcom/applovin/exoplayer2/e/x;

    new-instance v1, Lcom/applovin/exoplayer2/e/i/l$b;

    invoke-direct {v1, v0}, Lcom/applovin/exoplayer2/e/i/l$b;-><init>(Lcom/applovin/exoplayer2/e/x;)V

    iput-object v1, p0, Lcom/applovin/exoplayer2/e/i/l;->Dt:Lcom/applovin/exoplayer2/e/i/l$b;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/l;->Dc:Lcom/applovin/exoplayer2/e/i/af;

    if-eqz v0, :cond_22

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/e/i/af;->a(Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V

    :cond_22
    return-void
.end method

.method public e(JI)V
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_b

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/i/l;->Dk:J

    :cond_b
    return-void
.end method

.method public jb()V
    .registers 3

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/l;->Df:[Z

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/v;->b([Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/l;->Ds:Lcom/applovin/exoplayer2/e/i/l$a;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/l$a;->Y()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/l;->Dt:Lcom/applovin/exoplayer2/e/i/l$b;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/l$b;->Y()V

    :cond_11
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/l;->De:Lcom/applovin/exoplayer2/e/i/r;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/r;->Y()V

    :cond_18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/l;->Dh:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/l;->Dk:J

    return-void
.end method

.method public jc()V
    .registers 1

    return-void
.end method

###### Class com.applovin.exoplayer2.e.i.l.a (com.applovin.exoplayer2.e.i.l$a)
.class final Lcom/applovin/exoplayer2/e/i/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/i/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final Do:[B


# instance fields
.field private Dp:Z

.field public Du:I

.field private Z:I

.field public fR:I

.field public tf:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/applovin/exoplayer2/e/i/l$a;->Do:[B

    return-void

    nop

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/l$a;->tf:[B

    return-void
.end method


# virtual methods
.method public B(II)Z
    .registers 11

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/l$a;->Z:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_59

    const/16 v3, 0xb5

    const/4 v4, 0x2

    const-string v5, "Unexpected start code value"

    const-string v6, "H263Reader"

    if-eq v0, v2, :cond_4d

    const/4 v7, 0x3

    if-eq v0, v4, :cond_3f

    const/4 v4, 0x4

    if-eq v0, v7, :cond_2b

    if-ne v0, v4, :cond_25

    const/16 v0, 0xb3

    if-eq p1, v0, :cond_1d

    if-ne p1, v3, :cond_61

    :cond_1d
    iget p1, p0, Lcom/applovin/exoplayer2/e/i/l$a;->fR:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/l$a;->fR:I

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/e/i/l$a;->Dp:Z

    return v2

    :cond_25
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2b
    and-int/lit16 p1, p1, 0xf0

    const/16 p2, 0x20

    if-eq p1, p2, :cond_38

    invoke-static {v6, v5}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e/i/l$a;->Y()V

    goto :goto_61

    :cond_38
    iget p1, p0, Lcom/applovin/exoplayer2/e/i/l$a;->fR:I

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/l$a;->Du:I

    iput v4, p0, Lcom/applovin/exoplayer2/e/i/l$a;->Z:I

    goto :goto_61

    :cond_3f
    const/16 p2, 0x1f

    if-le p1, p2, :cond_4a

    invoke-static {v6, v5}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e/i/l$a;->Y()V

    goto :goto_61

    :cond_4a
    iput v7, p0, Lcom/applovin/exoplayer2/e/i/l$a;->Z:I

    goto :goto_61

    :cond_4d
    if-eq p1, v3, :cond_56

    invoke-static {v6, v5}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/e/i/l$a;->Y()V

    goto :goto_61

    :cond_56
    iput v4, p0, Lcom/applovin/exoplayer2/e/i/l$a;->Z:I

    goto :goto_61

    :cond_59
    const/16 p2, 0xb0

    if-ne p1, p2, :cond_61

    iput v2, p0, Lcom/applovin/exoplayer2/e/i/l$a;->Z:I

    iput-boolean v2, p0, Lcom/applovin/exoplayer2/e/i/l$a;->Dp:Z

    :cond_61
    :goto_61
    sget-object p1, Lcom/applovin/exoplayer2/e/i/l$a;->Do:[B

    array-length p2, p1

    invoke-virtual {p0, p1, v1, p2}, Lcom/applovin/exoplayer2/e/i/l$a;->e([BII)V

    return v1
.end method

.method public Y()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/l$a;->Dp:Z

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/l$a;->fR:I

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/l$a;->Z:I

    return-void
.end method

.method public e([BII)V
    .registers 8

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/l$a;->Dp:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    sub-int/2addr p3, p2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/l$a;->tf:[B

    array-length v1, v0

    iget v2, p0, Lcom/applovin/exoplayer2/e/i/l$a;->fR:I

    add-int v3, v2, p3

    if-ge v1, v3, :cond_18

    add-int/2addr v2, p3

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/l$a;->tf:[B

    :cond_18
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/l$a;->tf:[B

    iget v1, p0, Lcom/applovin/exoplayer2/e/i/l$a;->fR:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/applovin/exoplayer2/e/i/l$a;->fR:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/l$a;->fR:I

    return-void
.end method

###### Class com.applovin.exoplayer2.e.i.l.b (com.applovin.exoplayer2.e.i.l$b)
.class final Lcom/applovin/exoplayer2/e/i/l$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/e/i/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private Da:J

.field private Dl:J

.field private Dm:Z

.field private Dv:Z

.field private Dw:Z

.field private Dx:I

.field private Dy:I

.field private final wl:Lcom/applovin/exoplayer2/e/x;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/e/x;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/l$b;->wl:Lcom/applovin/exoplayer2/e/x;

    return-void
.end method


# virtual methods
.method public Y()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/l$b;->Dv:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/l$b;->Dw:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/l$b;->Dm:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/l$b;->Dx:I

    return-void
.end method

.method public a(JIZ)V
    .registers 12

    iget v0, p0, Lcom/applovin/exoplayer2/e/i/l$b;->Dx:I

    const/16 v1, 0xb6

    if-ne v0, v1, :cond_25

    if-eqz p4, :cond_25

    iget-boolean p4, p0, Lcom/applovin/exoplayer2/e/i/l$b;->Dv:Z

    if-eqz p4, :cond_25

    iget-wide v1, p0, Lcom/applovin/exoplayer2/e/i/l$b;->Da:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p4, v1, v3

    if-eqz p4, :cond_25

    iget-wide v3, p0, Lcom/applovin/exoplayer2/e/i/l$b;->Dl:J

    sub-long v3, p1, v3

    long-to-int v4, v3

    iget-boolean v3, p0, Lcom/applovin/exoplayer2/e/i/l$b;->Dm:Z

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/l$b;->wl:Lcom/applovin/exoplayer2/e/x;

    const/4 v6, 0x0

    move v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/applovin/exoplayer2/e/x;->a(JIIILcom/applovin/exoplayer2/e/x$a;)V

    :cond_25
    iget p3, p0, Lcom/applovin/exoplayer2/e/i/l$b;->Dx:I

    const/16 p4, 0xb3

    if-eq p3, p4, :cond_2d

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/i/l$b;->Dl:J

    :cond_2d
    return-void
.end method

.method public e([BII)V
    .registers 6

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/l$b;->Dw:Z

    if-eqz v0, :cond_20

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lcom/applovin/exoplayer2/e/i/l$b;->Dy:I

    sub-int/2addr v0, v1

    if-ge v0, p3, :cond_1c

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xc0

    shr-int/lit8 p1, p1, 0x6

    const/4 p2, 0x0

    if-nez p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/l$b;->Dm:Z

    iput-boolean p2, p0, Lcom/applovin/exoplayer2/e/i/l$b;->Dw:Z

    goto :goto_20

    :cond_1c
    sub-int/2addr p3, p2

    add-int/2addr v1, p3

    iput v1, p0, Lcom/applovin/exoplayer2/e/i/l$b;->Dy:I

    :cond_20
    :goto_20
    return-void
.end method

.method public g(IJ)V
    .registers 8

    iput p1, p0, Lcom/applovin/exoplayer2/e/i/l$b;->Dx:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/l$b;->Dm:Z

    const/4 v1, 0x1

    const/16 v2, 0xb6

    if-eq p1, v2, :cond_11

    const/16 v3, 0xb3

    if-ne p1, v3, :cond_f

    goto :goto_11

    :cond_f
    const/4 v3, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v3, 0x1

    :goto_12
    iput-boolean v3, p0, Lcom/applovin/exoplayer2/e/i/l$b;->Dv:Z

    if-ne p1, v2, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    iput-boolean v1, p0, Lcom/applovin/exoplayer2/e/i/l$b;->Dw:Z

    iput v0, p0, Lcom/applovin/exoplayer2/e/i/l$b;->Dy:I

    iput-wide p2, p0, Lcom/applovin/exoplayer2/e/i/l$b;->Da:J

    return-void
.end method

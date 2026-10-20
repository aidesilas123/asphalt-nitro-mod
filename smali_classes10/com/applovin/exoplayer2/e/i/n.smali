###### Class com.applovin.exoplayer2.e.i.n (com.applovin.exoplayer2.e.i.n)
.class public final Lcom/applovin/exoplayer2/e/i/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/exoplayer2/e/i/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/e/i/n$a;
    }
.end annotation


# instance fields
.field private Ct:Ljava/lang/String;

.field private final DC:Lcom/applovin/exoplayer2/e/i/r;

.field private final DD:Lcom/applovin/exoplayer2/e/i/r;

.field private final DH:Lcom/applovin/exoplayer2/l/y;

.field private final Df:[Z

.field private Dh:J

.field private Dk:J

.field private final Dz:Lcom/applovin/exoplayer2/e/i/z;

.field private Ei:Lcom/applovin/exoplayer2/e/i/n$a;

.field private final Ej:Lcom/applovin/exoplayer2/e/i/r;

.field private final Ek:Lcom/applovin/exoplayer2/e/i/r;

.field private final El:Lcom/applovin/exoplayer2/e/i/r;

.field private vJ:Z

.field private wl:Lcom/applovin/exoplayer2/e/x;


# direct methods
.method public constructor <init>(Lcom/applovin/exoplayer2/e/i/z;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->Dz:Lcom/applovin/exoplayer2/e/i/z;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->Df:[Z

    new-instance p1, Lcom/applovin/exoplayer2/e/i/r;

    const/16 v0, 0x20

    const/16 v1, 0x80

    invoke-direct {p1, v0, v1}, Lcom/applovin/exoplayer2/e/i/r;-><init>(II)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->Ej:Lcom/applovin/exoplayer2/e/i/r;

    new-instance p1, Lcom/applovin/exoplayer2/e/i/r;

    const/16 v0, 0x21

    invoke-direct {p1, v0, v1}, Lcom/applovin/exoplayer2/e/i/r;-><init>(II)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->DC:Lcom/applovin/exoplayer2/e/i/r;

    new-instance p1, Lcom/applovin/exoplayer2/e/i/r;

    const/16 v0, 0x22

    invoke-direct {p1, v0, v1}, Lcom/applovin/exoplayer2/e/i/r;-><init>(II)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->DD:Lcom/applovin/exoplayer2/e/i/r;

    new-instance p1, Lcom/applovin/exoplayer2/e/i/r;

    const/16 v0, 0x27

    invoke-direct {p1, v0, v1}, Lcom/applovin/exoplayer2/e/i/r;-><init>(II)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->Ek:Lcom/applovin/exoplayer2/e/i/r;

    new-instance p1, Lcom/applovin/exoplayer2/e/i/r;

    const/16 v0, 0x28

    invoke-direct {p1, v0, v1}, Lcom/applovin/exoplayer2/e/i/r;-><init>(II)V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->El:Lcom/applovin/exoplayer2/e/i/r;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/n;->Dk:J

    new-instance p1, Lcom/applovin/exoplayer2/l/y;

    invoke-direct {p1}, Lcom/applovin/exoplayer2/l/y;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->DH:Lcom/applovin/exoplayer2/l/y;

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/applovin/exoplayer2/e/i/r;Lcom/applovin/exoplayer2/e/i/r;Lcom/applovin/exoplayer2/e/i/r;)Lcom/applovin/exoplayer2/v;
    .registers 20
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget v3, v0, Lcom/applovin/exoplayer2/e/i/r;->EK:I

    iget v4, v1, Lcom/applovin/exoplayer2/e/i/r;->EK:I

    add-int/2addr v4, v3

    iget v5, v2, Lcom/applovin/exoplayer2/e/i/r;->EK:I

    add-int/2addr v4, v5

    new-array v4, v4, [B

    iget-object v5, v0, Lcom/applovin/exoplayer2/e/i/r;->EJ:[B

    const/4 v6, 0x0

    invoke-static {v5, v6, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v1, Lcom/applovin/exoplayer2/e/i/r;->EJ:[B

    iget v5, v0, Lcom/applovin/exoplayer2/e/i/r;->EK:I

    iget v7, v1, Lcom/applovin/exoplayer2/e/i/r;->EK:I

    invoke-static {v3, v6, v4, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v2, Lcom/applovin/exoplayer2/e/i/r;->EJ:[B

    iget v0, v0, Lcom/applovin/exoplayer2/e/i/r;->EK:I

    iget v5, v1, Lcom/applovin/exoplayer2/e/i/r;->EK:I

    add-int/2addr v0, v5

    iget v2, v2, Lcom/applovin/exoplayer2/e/i/r;->EK:I

    invoke-static {v3, v6, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Lcom/applovin/exoplayer2/l/z;

    iget-object v2, v1, Lcom/applovin/exoplayer2/e/i/r;->EJ:[B

    iget v3, v1, Lcom/applovin/exoplayer2/e/i/r;->EK:I

    invoke-direct {v0, v2, v6, v3}, Lcom/applovin/exoplayer2/l/z;-><init>([BII)V

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/z;->bR(I)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/l/z;->bQ(I)I

    move-result v3

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ph()V

    const/16 v5, 0x58

    invoke-virtual {v0, v5}, Lcom/applovin/exoplayer2/l/z;->bR(I)V

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/applovin/exoplayer2/l/z;->bR(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_4d
    if-ge v7, v3, :cond_62

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v9

    if-eqz v9, :cond_57

    add-int/lit8 v8, v8, 0x59

    :cond_57
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v9

    if-eqz v9, :cond_5f

    add-int/lit8 v8, v8, 0x8

    :cond_5f
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    :cond_62
    invoke-virtual {v0, v8}, Lcom/applovin/exoplayer2/l/z;->bR(I)V

    const/4 v7, 0x2

    if-lez v3, :cond_6f

    rsub-int/lit8 v8, v3, 0x8

    mul-int/lit8 v8, v8, 0x2

    invoke-virtual {v0, v8}, Lcom/applovin/exoplayer2/l/z;->bR(I)V

    :cond_6f
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v8

    if-ne v8, v2, :cond_7b

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ph()V

    :cond_7b
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v2

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v9

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_af

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v10

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v12

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v13

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v14

    if-eq v8, v11, :cond_a1

    if-ne v8, v7, :cond_9f

    goto :goto_a1

    :cond_9f
    const/4 v15, 0x1

    goto :goto_a2

    :cond_a1
    :goto_a1
    const/4 v15, 0x2

    :goto_a2
    if-ne v8, v11, :cond_a6

    const/4 v8, 0x2

    goto :goto_a7

    :cond_a6
    const/4 v8, 0x1

    :goto_a7
    add-int/2addr v10, v12

    mul-int v15, v15, v10

    sub-int/2addr v2, v15

    add-int/2addr v13, v14

    mul-int v8, v8, v13

    sub-int/2addr v9, v8

    :cond_af
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v8

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v10

    if-eqz v10, :cond_c1

    const/4 v10, 0x0

    goto :goto_c2

    :cond_c1
    move v10, v3

    :goto_c2
    if-gt v10, v3, :cond_d0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    add-int/lit8 v10, v10, 0x1

    goto :goto_c2

    :cond_d0
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v3

    if-eqz v3, :cond_f1

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v3

    if-eqz v3, :cond_f1

    invoke-static {v0}, Lcom/applovin/exoplayer2/e/i/n;->a(Lcom/applovin/exoplayer2/l/z;)V

    :cond_f1
    invoke-virtual {v0, v7}, Lcom/applovin/exoplayer2/l/z;->bR(I)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v3

    if-eqz v3, :cond_106

    invoke-virtual {v0, v5}, Lcom/applovin/exoplayer2/l/z;->bR(I)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ph()V

    :cond_106
    invoke-static {v0}, Lcom/applovin/exoplayer2/e/i/n;->b(Lcom/applovin/exoplayer2/l/z;)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v3

    const/4 v10, 0x4

    if-eqz v3, :cond_120

    const/4 v3, 0x0

    :goto_111
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v12

    if-ge v3, v12, :cond_120

    add-int/lit8 v12, v8, 0x4

    add-int/2addr v12, v11

    invoke-virtual {v0, v12}, Lcom/applovin/exoplayer2/l/z;->bR(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_111

    :cond_120
    invoke-virtual {v0, v7}, Lcom/applovin/exoplayer2/l/z;->bR(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v7

    const/16 v8, 0x18

    if-eqz v7, :cond_19d

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v7

    if-eqz v7, :cond_16b

    invoke-virtual {v0, v5}, Lcom/applovin/exoplayer2/l/z;->bQ(I)I

    move-result v5

    const/16 v7, 0xff

    if-ne v5, v7, :cond_14d

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Lcom/applovin/exoplayer2/l/z;->bQ(I)I

    move-result v7

    invoke-virtual {v0, v5}, Lcom/applovin/exoplayer2/l/z;->bQ(I)I

    move-result v5

    if-eqz v7, :cond_16b

    if-eqz v5, :cond_16b

    int-to-float v3, v7

    int-to-float v5, v5

    div-float/2addr v3, v5

    goto :goto_16b

    :cond_14d
    sget-object v7, Lcom/applovin/exoplayer2/l/v;->acq:[F

    array-length v11, v7

    if-ge v5, v11, :cond_155

    aget v3, v7, v5

    goto :goto_16b

    :cond_155
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "H265Reader"

    invoke-static {v7, v5}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16b
    :goto_16b
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v5

    if-eqz v5, :cond_174

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ph()V

    :cond_174
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v5

    if-eqz v5, :cond_186

    invoke-virtual {v0, v10}, Lcom/applovin/exoplayer2/l/z;->bR(I)V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v5

    if-eqz v5, :cond_186

    invoke-virtual {v0, v8}, Lcom/applovin/exoplayer2/l/z;->bR(I)V

    :cond_186
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v5

    if-eqz v5, :cond_192

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    :cond_192
    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ph()V

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v5

    if-eqz v5, :cond_19d

    mul-int/lit8 v9, v9, 0x2

    :cond_19d
    iget-object v5, v1, Lcom/applovin/exoplayer2/e/i/r;->EJ:[B

    iget v1, v1, Lcom/applovin/exoplayer2/e/i/r;->EK:I

    invoke-virtual {v0, v5, v6, v1}, Lcom/applovin/exoplayer2/l/z;->s([BII)V

    invoke-virtual {v0, v8}, Lcom/applovin/exoplayer2/l/z;->bR(I)V

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/e;->c(Lcom/applovin/exoplayer2/l/z;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/applovin/exoplayer2/v$a;

    invoke-direct {v1}, Lcom/applovin/exoplayer2/v$a;-><init>()V

    move-object/from16 v5, p0

    invoke-virtual {v1, v5}, Lcom/applovin/exoplayer2/v$a;->g(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v1

    const-string v5, "video/hevc"

    invoke-virtual {v1, v5}, Lcom/applovin/exoplayer2/v$a;->m(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/exoplayer2/v$a;->k(Ljava/lang/String;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/applovin/exoplayer2/v$a;->J(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/applovin/exoplayer2/v$a;->K(I)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/applovin/exoplayer2/v$a;->e(F)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/exoplayer2/v$a;->c(Ljava/util/List;)Lcom/applovin/exoplayer2/v$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/v$a;->bT()Lcom/applovin/exoplayer2/v;

    move-result-object v0

    return-object v0
.end method

.method private a(JIIJ)V
    .registers 9

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->Ei:Lcom/applovin/exoplayer2/e/i/n$a;

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/e/i/n;->vJ:Z

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/applovin/exoplayer2/e/i/n$a;->b(JIZ)V

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/n;->vJ:Z

    if-nez p1, :cond_46

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->Ej:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1, p4}, Lcom/applovin/exoplayer2/e/i/r;->cC(I)Z

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->DC:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1, p4}, Lcom/applovin/exoplayer2/e/i/r;->cC(I)Z

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->DD:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1, p4}, Lcom/applovin/exoplayer2/e/i/r;->cC(I)Z

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->Ej:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/e/i/r;->jq()Z

    move-result p1

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->DC:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/e/i/r;->jq()Z

    move-result p1

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->DD:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1}, Lcom/applovin/exoplayer2/e/i/r;->jq()Z

    move-result p1

    if-eqz p1, :cond_46

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->wl:Lcom/applovin/exoplayer2/e/x;

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/n;->Ct:Ljava/lang/String;

    iget-object p3, p0, Lcom/applovin/exoplayer2/e/i/n;->Ej:Lcom/applovin/exoplayer2/e/i/r;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->DC:Lcom/applovin/exoplayer2/e/i/r;

    iget-object v1, p0, Lcom/applovin/exoplayer2/e/i/n;->DD:Lcom/applovin/exoplayer2/e/i/r;

    invoke-static {p2, p3, v0, v1}, Lcom/applovin/exoplayer2/e/i/n;->a(Ljava/lang/String;Lcom/applovin/exoplayer2/e/i/r;Lcom/applovin/exoplayer2/e/i/r;Lcom/applovin/exoplayer2/e/i/r;)Lcom/applovin/exoplayer2/v;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/applovin/exoplayer2/e/x;->j(Lcom/applovin/exoplayer2/v;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/n;->vJ:Z

    :cond_46
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->Ek:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1, p4}, Lcom/applovin/exoplayer2/e/i/r;->cC(I)Z

    move-result p1

    const/4 p2, 0x5

    if-eqz p1, :cond_6e

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->Ek:Lcom/applovin/exoplayer2/e/i/r;

    iget-object p3, p1, Lcom/applovin/exoplayer2/e/i/r;->EJ:[B

    iget p1, p1, Lcom/applovin/exoplayer2/e/i/r;->EK:I

    invoke-static {p3, p1}, Lcom/applovin/exoplayer2/l/v;->i([BI)I

    move-result p1

    iget-object p3, p0, Lcom/applovin/exoplayer2/e/i/n;->DH:Lcom/applovin/exoplayer2/l/y;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->Ek:Lcom/applovin/exoplayer2/e/i/r;

    iget-object v0, v0, Lcom/applovin/exoplayer2/e/i/r;->EJ:[B

    invoke-virtual {p3, v0, p1}, Lcom/applovin/exoplayer2/l/y;->l([BI)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->DH:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->Dz:Lcom/applovin/exoplayer2/e/i/z;

    iget-object p3, p0, Lcom/applovin/exoplayer2/e/i/n;->DH:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, p5, p6, p3}, Lcom/applovin/exoplayer2/e/i/z;->a(JLcom/applovin/exoplayer2/l/y;)V

    :cond_6e
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->El:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1, p4}, Lcom/applovin/exoplayer2/e/i/r;->cC(I)Z

    move-result p1

    if-eqz p1, :cond_95

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->El:Lcom/applovin/exoplayer2/e/i/r;

    iget-object p3, p1, Lcom/applovin/exoplayer2/e/i/r;->EJ:[B

    iget p1, p1, Lcom/applovin/exoplayer2/e/i/r;->EK:I

    invoke-static {p3, p1}, Lcom/applovin/exoplayer2/l/v;->i([BI)I

    move-result p1

    iget-object p3, p0, Lcom/applovin/exoplayer2/e/i/n;->DH:Lcom/applovin/exoplayer2/l/y;

    iget-object p4, p0, Lcom/applovin/exoplayer2/e/i/n;->El:Lcom/applovin/exoplayer2/e/i/r;

    iget-object p4, p4, Lcom/applovin/exoplayer2/e/i/r;->EJ:[B

    invoke-virtual {p3, p4, p1}, Lcom/applovin/exoplayer2/l/y;->l([BI)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->DH:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, p2}, Lcom/applovin/exoplayer2/l/y;->fz(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->Dz:Lcom/applovin/exoplayer2/e/i/z;

    iget-object p2, p0, Lcom/applovin/exoplayer2/e/i/n;->DH:Lcom/applovin/exoplayer2/l/y;

    invoke-virtual {p1, p5, p6, p2}, Lcom/applovin/exoplayer2/e/i/z;->a(JLcom/applovin/exoplayer2/l/y;)V

    :cond_95
    return-void
.end method

.method private static a(Lcom/applovin/exoplayer2/l/z;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_36

    const/4 v3, 0x0

    :goto_6
    const/4 v4, 0x6

    if-ge v3, v4, :cond_33

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_14

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    goto :goto_2d

    :cond_14
    const/16 v4, 0x40

    shl-int/lit8 v6, v1, 0x1

    add-int/2addr v6, v2

    shl-int v6, v5, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v1, v5, :cond_24

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->pN()I

    :cond_24
    const/4 v6, 0x0

    :goto_25
    if-ge v6, v4, :cond_2d

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->pN()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_25

    :cond_2d
    :goto_2d
    const/4 v4, 0x3

    if-ne v1, v4, :cond_31

    const/4 v5, 0x3

    :cond_31
    add-int/2addr v3, v5

    goto :goto_6

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_36
    return-void
.end method

.method private b(JIIJ)V
    .registers 15

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->Ei:Lcom/applovin/exoplayer2/e/i/n$a;

    iget-boolean v7, p0, Lcom/applovin/exoplayer2/e/i/n;->vJ:Z

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/applovin/exoplayer2/e/i/n$a;->a(JIIJZ)V

    iget-boolean p1, p0, Lcom/applovin/exoplayer2/e/i/n;->vJ:Z

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->Ej:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1, p4}, Lcom/applovin/exoplayer2/e/i/r;->cB(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->DC:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1, p4}, Lcom/applovin/exoplayer2/e/i/r;->cB(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->DD:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1, p4}, Lcom/applovin/exoplayer2/e/i/r;->cB(I)V

    :cond_1e
    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->Ek:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1, p4}, Lcom/applovin/exoplayer2/e/i/r;->cB(I)V

    iget-object p1, p0, Lcom/applovin/exoplayer2/e/i/n;->El:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {p1, p4}, Lcom/applovin/exoplayer2/e/i/r;->cB(I)V

    return-void
.end method

.method private static b(Lcom/applovin/exoplayer2/l/z;)V
    .registers 9

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v2, v0, :cond_4d

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v3

    :cond_10
    if-eqz v3, :cond_27

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->ph()V

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    const/4 v5, 0x0

    :goto_19
    if-gt v5, v4, :cond_4a

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->ik()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->ph()V

    :cond_24
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_27
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v4

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    move-result v5

    add-int v6, v4, v5

    const/4 v7, 0x0

    :goto_32
    if-ge v7, v4, :cond_3d

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->ph()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    :cond_3d
    const/4 v4, 0x0

    :goto_3e
    if-ge v4, v5, :cond_49

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->pM()I

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/l/z;->ph()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    :cond_49
    move v4, v6

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_4d
    return-void
.end method

.method private f([BII)V
    .registers 5

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->Ei:Lcom/applovin/exoplayer2/e/i/n$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/n$a;->h([BII)V

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/e/i/n;->vJ:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->Ej:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/r;->g([BII)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->DC:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/r;->g([BII)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->DD:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/r;->g([BII)V

    :cond_18
    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->Ek:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/r;->g([BII)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->El:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/exoplayer2/e/i/r;->g([BII)V

    return-void
.end method

.method private jm()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->N(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->Ei:Lcom/applovin/exoplayer2/e/i/n$a;

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/ai;->R(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public K(Lcom/applovin/exoplayer2/l/y;)V
    .registers 18

    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p0}, Lcom/applovin/exoplayer2/e/i/n;->jm()V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v0

    if-lez v0, :cond_65

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->il()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->pk()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->hO()[B

    move-result-object v9

    iget-wide v1, v7, Lcom/applovin/exoplayer2/e/i/n;->Dh:J

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v7, Lcom/applovin/exoplayer2/e/i/n;->Dh:J

    iget-object v1, v7, Lcom/applovin/exoplayer2/e/i/n;->wl:Lcom/applovin/exoplayer2/e/x;

    invoke-virtual/range {p1 .. p1}, Lcom/applovin/exoplayer2/l/y;->pj()I

    move-result v2

    move-object/from16 v10, p1

    invoke-interface {v1, v10, v2}, Lcom/applovin/exoplayer2/e/x;->c(Lcom/applovin/exoplayer2/l/y;I)V

    :goto_2c
    if-ge v0, v8, :cond_5

    iget-object v1, v7, Lcom/applovin/exoplayer2/e/i/n;->Df:[Z

    invoke-static {v9, v0, v8, v1}, Lcom/applovin/exoplayer2/l/v;->a([BII[Z)I

    move-result v11

    if-ne v11, v8, :cond_3a

    invoke-direct {v7, v9, v0, v8}, Lcom/applovin/exoplayer2/e/i/n;->f([BII)V

    return-void

    :cond_3a
    invoke-static {v9, v11}, Lcom/applovin/exoplayer2/l/v;->k([BI)I

    move-result v12

    sub-int v1, v11, v0

    if-lez v1, :cond_45

    invoke-direct {v7, v9, v0, v11}, Lcom/applovin/exoplayer2/e/i/n;->f([BII)V

    :cond_45
    sub-int v13, v8, v11

    iget-wide v2, v7, Lcom/applovin/exoplayer2/e/i/n;->Dh:J

    int-to-long v4, v13

    sub-long v14, v2, v4

    if-gez v1, :cond_51

    neg-int v0, v1

    move v4, v0

    goto :goto_53

    :cond_51
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_53
    iget-wide v5, v7, Lcom/applovin/exoplayer2/e/i/n;->Dk:J

    move-object/from16 v0, p0

    move-wide v1, v14

    move v3, v13

    invoke-direct/range {v0 .. v6}, Lcom/applovin/exoplayer2/e/i/n;->a(JIIJ)V

    iget-wide v5, v7, Lcom/applovin/exoplayer2/e/i/n;->Dk:J

    move v4, v12

    invoke-direct/range {v0 .. v6}, Lcom/applovin/exoplayer2/e/i/n;->b(JIIJ)V

    add-int/lit8 v0, v11, 0x3

    goto :goto_2c

    :cond_65
    return-void
.end method

.method public a(Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V
    .registers 5

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jy()V

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->Ct:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/applovin/exoplayer2/e/i/ad$d;->jz()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/applovin/exoplayer2/e/j;->y(II)Lcom/applovin/exoplayer2/e/x;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->wl:Lcom/applovin/exoplayer2/e/x;

    new-instance v1, Lcom/applovin/exoplayer2/e/i/n$a;

    invoke-direct {v1, v0}, Lcom/applovin/exoplayer2/e/i/n$a;-><init>(Lcom/applovin/exoplayer2/e/x;)V

    iput-object v1, p0, Lcom/applovin/exoplayer2/e/i/n;->Ei:Lcom/applovin/exoplayer2/e/i/n$a;

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->Dz:Lcom/applovin/exoplayer2/e/i/z;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/exoplayer2/e/i/z;->a(Lcom/applovin/exoplayer2/e/j;Lcom/applovin/exoplayer2/e/i/ad$d;)V

    return-void
.end method

.method public e(JI)V
    .registers 6

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, p1, v0

    if-eqz p3, :cond_b

    iput-wide p1, p0, Lcom/applovin/exoplayer2/e/i/n;->Dk:J

    :cond_b
    return-void
.end method

.method public jb()V
    .registers 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/n;->Dh:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/applovin/exoplayer2/e/i/n;->Dk:J

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->Df:[Z

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/v;->b([Z)V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->Ej:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/r;->Y()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->DC:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/r;->Y()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->DD:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/r;->Y()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->Ek:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/r;->Y()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->El:Lcom/applovin/exoplayer2/e/i/r;

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/r;->Y()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/e/i/n;->Ei:Lcom/applovin/exoplayer2/e/i/n$a;

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Lcom/applovin/exoplayer2/e/i/n$a;->Y()V

    :cond_30
    return-void
.end method

.method public jc()V
    .registers 1

    return-void
.end method

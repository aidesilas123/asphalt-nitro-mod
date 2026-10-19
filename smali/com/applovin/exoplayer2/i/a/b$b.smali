###### Class com.applovin.exoplayer2.i.a.b.C0044b (com.applovin.exoplayer2.i.a.b$b)
.class final Lcom/applovin/exoplayer2/i/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/i/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field public static final PA:I

.field public static final PB:I

.field private static final PC:[I

.field private static final PD:[I

.field private static final PE:[I

.field private static final PF:[Z

.field private static final PG:[I

.field private static final PH:[I

.field private static final PI:[I

.field private static final PJ:[I

.field public static final Pz:I


# instance fields
.field private final PK:Landroid/text/SpannableStringBuilder;

.field private PL:Z

.field private PM:Z

.field private PN:Z

.field private PO:I

.field private PP:I

.field private PQ:I

.field private PR:I

.field private PS:Z

.field private PT:I

.field private PU:I

.field private PV:I

.field private PW:I

.field private PX:I

.field private PY:I

.field private PZ:I

.field private final Ph:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/SpannableString;",
            ">;"
        }
    .end annotation
.end field

.field private Pj:I

.field private Py:I

.field private Qa:I

.field private Qb:I

.field private Qc:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v0, v0, v1}, Lcom/applovin/exoplayer2/i/a/b$b;->b(IIII)I

    move-result v2

    sput v2, Lcom/applovin/exoplayer2/i/a/b$b;->Pz:I

    invoke-static {v1, v1, v1, v1}, Lcom/applovin/exoplayer2/i/a/b$b;->b(IIII)I

    move-result v2

    sput v2, Lcom/applovin/exoplayer2/i/a/b$b;->PA:I

    const/4 v3, 0x3

    invoke-static {v1, v1, v1, v3}, Lcom/applovin/exoplayer2/i/a/b$b;->b(IIII)I

    move-result v4

    sput v4, Lcom/applovin/exoplayer2/i/a/b$b;->PB:I

    const/4 v5, 0x7

    new-array v6, v5, [I

    fill-array-data v6, :array_6a

    sput-object v6, Lcom/applovin/exoplayer2/i/a/b$b;->PC:[I

    new-array v6, v5, [I

    fill-array-data v6, :array_7c

    sput-object v6, Lcom/applovin/exoplayer2/i/a/b$b;->PD:[I

    new-array v6, v5, [I

    fill-array-data v6, :array_8e

    sput-object v6, Lcom/applovin/exoplayer2/i/a/b$b;->PE:[I

    new-array v6, v5, [Z

    fill-array-data v6, :array_a0

    sput-object v6, Lcom/applovin/exoplayer2/i/a/b$b;->PF:[Z

    new-array v6, v5, [I

    aput v2, v6, v1

    const/4 v7, 0x1

    aput v4, v6, v7

    aput v2, v6, v0

    aput v2, v6, v3

    const/4 v8, 0x4

    aput v4, v6, v8

    const/4 v9, 0x5

    aput v2, v6, v9

    const/4 v10, 0x6

    aput v2, v6, v10

    sput-object v6, Lcom/applovin/exoplayer2/i/a/b$b;->PG:[I

    new-array v6, v5, [I

    fill-array-data v6, :array_a8

    sput-object v6, Lcom/applovin/exoplayer2/i/a/b$b;->PH:[I

    new-array v6, v5, [I

    fill-array-data v6, :array_ba

    sput-object v6, Lcom/applovin/exoplayer2/i/a/b$b;->PI:[I

    new-array v5, v5, [I

    aput v2, v5, v1

    aput v2, v5, v7

    aput v2, v5, v0

    aput v2, v5, v3

    aput v2, v5, v8

    aput v4, v5, v9

    aput v4, v5, v10

    sput-object v5, Lcom/applovin/exoplayer2/i/a/b$b;->PJ:[I

    return-void

    nop

    :array_6a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
    .end array-data

    :array_7c
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_8e
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x1
    .end array-data

    :array_a0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_a8
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x3
        0x4
    .end array-data

    :array_ba
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/a/b$b;->Y()V

    return-void
.end method

.method public static b(IIII)I
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/applovin/exoplayer2/l/a;->h(III)I

    invoke-static {p1, v0, v1}, Lcom/applovin/exoplayer2/l/a;->h(III)I

    invoke-static {p2, v0, v1}, Lcom/applovin/exoplayer2/l/a;->h(III)I

    invoke-static {p3, v0, v1}, Lcom/applovin/exoplayer2/l/a;->h(III)I

    const/4 v1, 0x1

    const/16 v2, 0xff

    if-eqz p3, :cond_21

    if-eq p3, v1, :cond_21

    const/4 v3, 0x2

    if-eq p3, v3, :cond_1e

    const/4 v3, 0x3

    if-eq p3, v3, :cond_1c

    goto :goto_21

    :cond_1c
    const/4 p3, 0x0

    goto :goto_23

    :cond_1e
    const/16 p3, 0x7f

    goto :goto_23

    :cond_21
    :goto_21
    const/16 p3, 0xff

    :goto_23
    if-le p0, v1, :cond_28

    const/16 p0, 0xff

    goto :goto_29

    :cond_28
    const/4 p0, 0x0

    :goto_29
    if-le p1, v1, :cond_2e

    const/16 p1, 0xff

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    if-le p2, v1, :cond_33

    const/16 v0, 0xff

    :cond_33
    invoke-static {p3, p0, p1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static f(III)I
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/applovin/exoplayer2/i/a/b$b;->b(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public G(II)V
    .registers 3

    iget p2, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Pj:I

    if-eq p2, p1, :cond_9

    const/16 p2, 0xa

    invoke-virtual {p0, p2}, Lcom/applovin/exoplayer2/i/a/b$b;->a(C)V

    :cond_9
    iput p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Pj:I

    return-void
.end method

.method public R(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PM:Z

    return-void
.end method

.method public Y()V
    .registers 3

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/a/b$b;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PL:Z

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PM:Z

    const/4 v1, 0x4

    iput v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Py:I

    iput-boolean v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PN:Z

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PO:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PP:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PQ:I

    const/16 v1, 0xf

    iput v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PR:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PS:Z

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PT:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PU:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PV:I

    sget v0, Lcom/applovin/exoplayer2/i/a/b$b;->PA:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PW:I

    sget v1, Lcom/applovin/exoplayer2/i/a/b$b;->Pz:I

    iput v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qa:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qc:I

    return-void
.end method

.method public a(C)V
    .registers 4

    const/16 v0, 0xa

    if-ne p1, v0, :cond_4a

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/a/b$b;->my()Landroid/text/SpannableString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->clear()V

    iget p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PX:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1a

    iput v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PX:I

    :cond_1a
    iget p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PY:I

    if-eq p1, v0, :cond_20

    iput v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PY:I

    :cond_20
    iget p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PZ:I

    if-eq p1, v0, :cond_26

    iput v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PZ:I

    :cond_26
    iget p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qb:I

    if-eq p1, v0, :cond_2c

    iput v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qb:I

    :cond_2c
    :goto_2c
    iget-boolean p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PS:Z

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PR:I

    if-ge p1, v0, :cond_44

    :cond_3a
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xf

    if-lt p1, v0, :cond_4f

    :cond_44
    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2c

    :cond_4a
    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    :cond_4f
    return-void
.end method

.method public a(IIIZZII)V
    .registers 8

    iget p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PX:I

    const/16 p2, 0x21

    const/4 p3, -0x1

    if-eq p1, p3, :cond_1f

    if-nez p4, :cond_29

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    new-instance p4, Landroid/text/style/StyleSpan;

    const/4 p6, 0x2

    invoke-direct {p4, p6}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget p6, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PX:I

    iget-object p7, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p7

    invoke-virtual {p1, p4, p6, p7, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iput p3, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PX:I

    goto :goto_29

    :cond_1f
    if-eqz p4, :cond_29

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PX:I

    :cond_29
    :goto_29
    iget p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PY:I

    if-eq p1, p3, :cond_44

    if-nez p5, :cond_4e

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    new-instance p4, Landroid/text/style/UnderlineSpan;

    invoke-direct {p4}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget p5, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PY:I

    iget-object p6, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p6

    invoke-virtual {p1, p4, p5, p6, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iput p3, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PY:I

    goto :goto_4e

    :cond_44
    if-eqz p5, :cond_4e

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PY:I

    :cond_4e
    :goto_4e
    return-void
.end method

.method public a(IIZIIII)V
    .registers 8

    iput p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PW:I

    iput p7, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PT:I

    return-void
.end method

.method public a(ZZZIZIIIIIII)V
    .registers 24

    move-object v0, p0

    move v1, p2

    move/from16 v2, p11

    move/from16 v3, p12

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PL:Z

    move v5, p1

    iput-boolean v5, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PM:Z

    iput-boolean v1, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PS:Z

    move v5, p4

    iput v5, v0, Lcom/applovin/exoplayer2/i/a/b$b;->Py:I

    move/from16 v5, p5

    iput-boolean v5, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PN:Z

    move/from16 v5, p6

    iput v5, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PO:I

    move/from16 v5, p7

    iput v5, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PP:I

    move/from16 v5, p10

    iput v5, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PQ:I

    iget v5, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PR:I

    add-int/lit8 v6, p8, 0x1

    if-eq v5, v6, :cond_46

    iput v6, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PR:I

    :goto_29
    if-eqz v1, :cond_35

    iget-object v5, v0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PR:I

    if-ge v5, v6, :cond_3f

    :cond_35
    iget-object v5, v0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0xf

    if-lt v5, v6, :cond_46

    :cond_3f
    iget-object v5, v0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_29

    :cond_46
    if-eqz v2, :cond_76

    iget v1, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PU:I

    if-eq v1, v2, :cond_76

    iput v2, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PU:I

    add-int/lit8 v1, v2, -0x1

    sget-object v2, Lcom/applovin/exoplayer2/i/a/b$b;->PG:[I

    aget v2, v2, v1

    sget v5, Lcom/applovin/exoplayer2/i/a/b$b;->PB:I

    sget-object v6, Lcom/applovin/exoplayer2/i/a/b$b;->PF:[Z

    aget-boolean v6, v6, v1

    const/4 v7, 0x0

    sget-object v8, Lcom/applovin/exoplayer2/i/a/b$b;->PD:[I

    aget v8, v8, v1

    sget-object v9, Lcom/applovin/exoplayer2/i/a/b$b;->PE:[I

    aget v9, v9, v1

    sget-object v10, Lcom/applovin/exoplayer2/i/a/b$b;->PC:[I

    aget v1, v10, v1

    move-object p1, p0

    move p2, v2

    move p3, v5

    move p4, v6

    move/from16 p5, v7

    move/from16 p6, v8

    move/from16 p7, v9

    move/from16 p8, v1

    invoke-virtual/range {p1 .. p8}, Lcom/applovin/exoplayer2/i/a/b$b;->a(IIZIIII)V

    :cond_76
    if-eqz v3, :cond_a7

    iget v1, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PV:I

    if-eq v1, v3, :cond_a7

    iput v3, v0, Lcom/applovin/exoplayer2/i/a/b$b;->PV:I

    add-int/lit8 v1, v3, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Lcom/applovin/exoplayer2/i/a/b$b;->PI:[I

    aget v7, v7, v1

    sget-object v8, Lcom/applovin/exoplayer2/i/a/b$b;->PH:[I

    aget v8, v8, v1

    move-object p1, p0

    move p2, v2

    move p3, v3

    move p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    invoke-virtual/range {p1 .. p8}, Lcom/applovin/exoplayer2/i/a/b$b;->a(IIIZZII)V

    sget v2, Lcom/applovin/exoplayer2/i/a/b$b;->Pz:I

    sget-object v3, Lcom/applovin/exoplayer2/i/a/b$b;->PJ:[I

    aget v1, v3, v1

    sget v3, Lcom/applovin/exoplayer2/i/a/b$b;->PA:I

    invoke-virtual {p0, v2, v1, v3}, Lcom/applovin/exoplayer2/i/a/b$b;->e(III)V

    :cond_a7
    return-void
.end method

.method public clear()V
    .registers 2

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PX:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PY:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PZ:I

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qb:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Pj:I

    return-void
.end method

.method public e(III)V
    .registers 9

    iget p3, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PZ:I

    const/16 v0, 0x21

    const/4 v1, -0x1

    if-eq p3, v1, :cond_1f

    iget p3, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qa:I

    if-eq p3, p1, :cond_1f

    iget-object p3, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v3, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qa:I

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v3, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PZ:I

    iget-object v4, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    invoke-virtual {p3, v2, v3, v4, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1f
    sget p3, Lcom/applovin/exoplayer2/i/a/b$b;->Pz:I

    if-eq p1, p3, :cond_2d

    iget-object p3, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    iput p3, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PZ:I

    iput p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qa:I

    :cond_2d
    iget p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qb:I

    if-eq p1, v1, :cond_49

    iget p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qc:I

    if-eq p1, p2, :cond_49

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    new-instance p3, Landroid/text/style/BackgroundColorSpan;

    iget v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qc:I

    invoke-direct {p3, v1}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qb:I

    iget-object v2, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, p3, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_49
    sget p1, Lcom/applovin/exoplayer2/i/a/b$b;->PA:I

    if-eq p2, p1, :cond_57

    iget-object p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    iput p1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qb:I

    iput p2, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qc:I

    :cond_57
    return-void
.end method

.method public isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/a/b$b;->mw()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    :goto_1a
    return v0
.end method

.method public mm()V
    .registers 4

    iget-object v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_f
    return-void
.end method

.method public mw()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PL:Z

    return v0
.end method

.method public mx()Z
    .registers 2

    iget-boolean v0, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PM:Z

    return v0
.end method

.method public my()Landroid/text/SpannableString;
    .registers 7

    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PK:Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4d

    iget v2, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PX:I

    const/16 v3, 0x21

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1f

    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v5, 0x2

    invoke-direct {v2, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v5, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PX:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1f
    iget v2, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PY:I

    if-eq v2, v4, :cond_2d

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v5, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PY:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_2d
    iget v2, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PZ:I

    if-eq v2, v4, :cond_3d

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget v5, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qa:I

    invoke-direct {v2, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v5, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PZ:I

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_3d
    iget v2, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qb:I

    if-eq v2, v4, :cond_4d

    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    iget v4, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qc:I

    invoke-direct {v2, v4}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    iget v4, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Qb:I

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_4d
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public mz()Lcom/applovin/exoplayer2/i/a/b$a;
    .registers 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/a/b$b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_f
    iget-object v3, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2a

    iget-object v3, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Ph:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2a
    invoke-virtual {p0}, Lcom/applovin/exoplayer2/i/a/b$b;->my()Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    iget v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PT:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v1, :cond_5e

    if-eq v1, v5, :cond_5b

    if-eq v1, v3, :cond_58

    if-ne v1, v4, :cond_3f

    goto :goto_5e

    :cond_3f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected justification value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_60

    :cond_5b
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_60

    :cond_5e
    :goto_5e
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_60
    move-object v6, v1

    iget-boolean v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PN:Z

    if-eqz v1, :cond_70

    iget v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PP:I

    int-to-float v1, v1

    const/high16 v7, 0x42c60000    # 99.0f

    div-float/2addr v1, v7

    iget v8, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PO:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    goto :goto_7d

    :cond_70
    iget v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PP:I

    int-to-float v1, v1

    const/high16 v7, 0x43510000    # 209.0f

    div-float/2addr v1, v7

    iget v7, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PO:I

    int-to-float v7, v7

    const/high16 v8, 0x42940000    # 74.0f

    div-float v8, v7, v8

    :goto_7d
    const v7, 0x3f666666    # 0.9f

    mul-float v1, v1, v7

    const v9, 0x3d4ccccd    # 0.05f

    add-float v10, v1, v9

    mul-float v8, v8, v7

    add-float v7, v8, v9

    iget v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PQ:I

    div-int/lit8 v8, v1, 0x3

    if-nez v8, :cond_93

    const/4 v8, 0x0

    goto :goto_9a

    :cond_93
    div-int/lit8 v8, v1, 0x3

    if-ne v8, v5, :cond_99

    const/4 v8, 0x1

    goto :goto_9a

    :cond_99
    const/4 v8, 0x2

    :goto_9a
    rem-int/lit8 v9, v1, 0x3

    if-nez v9, :cond_a0

    const/4 v9, 0x0

    goto :goto_a6

    :cond_a0
    rem-int/2addr v1, v4

    if-ne v1, v5, :cond_a5

    const/4 v9, 0x1

    goto :goto_a6

    :cond_a5
    const/4 v9, 0x2

    :goto_a6
    iget v1, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PW:I

    sget v3, Lcom/applovin/exoplayer2/i/a/b$b;->PA:I

    if-eq v1, v3, :cond_ad

    const/4 v0, 0x1

    :cond_ad
    new-instance v13, Lcom/applovin/exoplayer2/i/a/b$a;

    const/4 v5, 0x0

    const v11, -0x800001

    iget v12, p0, Lcom/applovin/exoplayer2/i/a/b$b;->PW:I

    iget v14, p0, Lcom/applovin/exoplayer2/i/a/b$b;->Py:I

    move-object v1, v13

    move-object v3, v6

    move v4, v7

    move v6, v8

    move v7, v10

    move v8, v9

    move v9, v11

    move v10, v0

    move v11, v12

    move v12, v14

    invoke-direct/range {v1 .. v12}, Lcom/applovin/exoplayer2/i/a/b$a;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIFZII)V

    return-object v13
.end method

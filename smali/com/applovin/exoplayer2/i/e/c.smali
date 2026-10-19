###### Class com.applovin.exoplayer2.i.e.c (com.applovin.exoplayer2.i.e.c)
.class final Lcom/applovin/exoplayer2/i/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/i/e/c$b;,
        Lcom/applovin/exoplayer2/i/e/c$a;
    }
.end annotation


# instance fields
.field public final Pn:Z

.field public final RC:I

.field public final RD:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final RE:F

.field public final RF:Z

.field public final RG:Z

.field public final RH:Z

.field public final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;FZZZZ)V
    .registers 9
    .param p3    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/exoplayer2/i/e/c;->name:Ljava/lang/String;

    iput p2, p0, Lcom/applovin/exoplayer2/i/e/c;->RC:I

    iput-object p3, p0, Lcom/applovin/exoplayer2/i/e/c;->RD:Ljava/lang/Integer;

    iput p4, p0, Lcom/applovin/exoplayer2/i/e/c;->RE:F

    iput-boolean p5, p0, Lcom/applovin/exoplayer2/i/e/c;->RF:Z

    iput-boolean p6, p0, Lcom/applovin/exoplayer2/i/e/c;->RG:Z

    iput-boolean p7, p0, Lcom/applovin/exoplayer2/i/e/c;->Pn:Z

    iput-boolean p8, p0, Lcom/applovin/exoplayer2/i/e/c;->RH:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/applovin/exoplayer2/i/e/c$a;)Lcom/applovin/exoplayer2/i/e/c;
    .registers 16
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "Style:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    iget v2, p1, Lcom/applovin/exoplayer2/i/e/c$a;->fR:I

    const-string v3, "SsaStyle"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v1, v2, :cond_3b

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v6

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v5

    const/4 v0, 0x2

    aput-object p0, p1, v0

    const-string p0, "Skipping malformed \'Style:\' line (expected %s values, found %s): \'%s\'"

    invoke-static {p0, p1}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_3b
    :try_start_3b
    new-instance v1, Lcom/applovin/exoplayer2/i/e/c;

    iget v2, p1, Lcom/applovin/exoplayer2/i/e/c$a;->RI:I

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget v7, p1, Lcom/applovin/exoplayer2/i/e/c$a;->RJ:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_55

    aget-object v7, v0, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/applovin/exoplayer2/i/e/c;->ad(Ljava/lang/String;)I

    move-result v7

    goto :goto_56

    :cond_55
    const/4 v7, -0x1

    :goto_56
    iget v9, p1, Lcom/applovin/exoplayer2/i/e/c$a;->RK:I

    if-eq v9, v8, :cond_65

    aget-object v9, v0, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/applovin/exoplayer2/i/e/c;->ae(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_66

    :cond_65
    move-object v9, v4

    :goto_66
    iget v10, p1, Lcom/applovin/exoplayer2/i/e/c$a;->RL:I

    if-eq v10, v8, :cond_75

    aget-object v10, v0, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/applovin/exoplayer2/i/e/c;->af(Ljava/lang/String;)F

    move-result v10

    goto :goto_78

    :cond_75
    const v10, -0x800001

    :goto_78
    iget v11, p1, Lcom/applovin/exoplayer2/i/e/c$a;->RM:I

    if-eq v11, v8, :cond_8a

    aget-object v11, v0, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/applovin/exoplayer2/i/e/c;->ag(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8a

    const/4 v11, 0x1

    goto :goto_8b

    :cond_8a
    const/4 v11, 0x0

    :goto_8b
    iget v12, p1, Lcom/applovin/exoplayer2/i/e/c$a;->RN:I

    if-eq v12, v8, :cond_9d

    aget-object v12, v0, v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/applovin/exoplayer2/i/e/c;->ag(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9d

    const/4 v12, 0x1

    goto :goto_9e

    :cond_9d
    const/4 v12, 0x0

    :goto_9e
    iget v13, p1, Lcom/applovin/exoplayer2/i/e/c$a;->RO:I

    if-eq v13, v8, :cond_b0

    aget-object v13, v0, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/applovin/exoplayer2/i/e/c;->ag(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b0

    const/4 v13, 0x1

    goto :goto_b1

    :cond_b0
    const/4 v13, 0x0

    :goto_b1
    iget p1, p1, Lcom/applovin/exoplayer2/i/e/c$a;->RP:I

    if-eq p1, v8, :cond_c3

    aget-object p1, v0, p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/applovin/exoplayer2/i/e/c;->ag(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c3

    const/4 p1, 0x1

    goto :goto_c4

    :cond_c3
    const/4 p1, 0x0

    :goto_c4
    move-object v5, v1

    move-object v6, v2

    move-object v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, p1

    invoke-direct/range {v5 .. v13}, Lcom/applovin/exoplayer2/i/e/c;-><init>(Ljava/lang/String;ILjava/lang/Integer;FZZZZ)V
    :try_end_cf
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_cf} :catch_d0

    return-object v1

    :catch_d0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping malformed \'Style:\' line: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, p1}, Lcom/applovin/exoplayer2/l/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v4
.end method

.method private static ad(Ljava/lang/String;)I
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/applovin/exoplayer2/i/e/c;->eA(I)Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_c} :catch_f

    if-eqz v1, :cond_f

    return v0

    :catch_f
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring unknown alignment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SsaStyle"

    invoke-static {v0, p0}, Lcom/applovin/exoplayer2/l/q;->h(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static ae(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 9
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :try_start_0
    const-string v0, "&H"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x10

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    goto :goto_18

    :cond_14
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :goto_18
    const-wide v4, 0xffffffffL

    cmp-long v0, v2, v4

    if-gtz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkArgument(Z)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_27} :catch_51

    const/16 p0, 0x18

    shr-long v4, v2, p0

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    xor-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/applovin/exoplayer2/common/b/c;->ad(J)I

    move-result p0

    shr-long v0, v2, v1

    and-long/2addr v0, v6

    invoke-static {v0, v1}, Lcom/applovin/exoplayer2/common/b/c;->ad(J)I

    move-result v0

    const/16 v1, 0x8

    shr-long v4, v2, v1

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/applovin/exoplayer2/common/b/c;->ad(J)I

    move-result v1

    and-long/2addr v2, v6

    invoke-static {v2, v3}, Lcom/applovin/exoplayer2/common/b/c;->ad(J)I

    move-result v2

    invoke-static {p0, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catch_51
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse color expression: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaStyle"

    invoke-static {v1, p0, v0}, Lcom/applovin/exoplayer2/l/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static af(Ljava/lang/String;)F
    .registers 4

    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse font size: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaStyle"

    invoke-static {v1, p0, v0}, Lcom/applovin/exoplayer2/l/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const p0, -0x800001

    return p0
.end method

.method private static ag(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_5} :catch_d

    const/4 v1, 0x1

    if-eq p0, v1, :cond_b

    const/4 v2, -0x1

    if-ne p0, v2, :cond_c

    :cond_b
    const/4 v0, 0x1

    :cond_c
    return v0

    :catch_d
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse boolean value: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "SsaStyle"

    invoke-static {v2, p0, v1}, Lcom/applovin/exoplayer2/l/q;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method static synthetic ah(Ljava/lang/String;)I
    .registers 1

    invoke-static {p0}, Lcom/applovin/exoplayer2/i/e/c;->ad(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static eA(I)Z
    .registers 1

    packed-switch p0, :pswitch_data_8

    const/4 p0, 0x0

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

###### Class com.applovin.exoplayer2.i.e.c.a (com.applovin.exoplayer2.i.e.c$a)
.class final Lcom/applovin/exoplayer2/i/e/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/i/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field public final RI:I

.field public final RJ:I

.field public final RK:I

.field public final RL:I

.field public final RM:I

.field public final RN:I

.field public final RO:I

.field public final RP:I

.field public final fR:I


# direct methods
.method private constructor <init>(IIIIIIIII)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/i/e/c$a;->RI:I

    iput p2, p0, Lcom/applovin/exoplayer2/i/e/c$a;->RJ:I

    iput p3, p0, Lcom/applovin/exoplayer2/i/e/c$a;->RK:I

    iput p4, p0, Lcom/applovin/exoplayer2/i/e/c$a;->RL:I

    iput p5, p0, Lcom/applovin/exoplayer2/i/e/c$a;->RM:I

    iput p6, p0, Lcom/applovin/exoplayer2/i/e/c$a;->RN:I

    iput p7, p0, Lcom/applovin/exoplayer2/i/e/c$a;->RO:I

    iput p8, p0, Lcom/applovin/exoplayer2/i/e/c$a;->RP:I

    iput p9, p0, Lcom/applovin/exoplayer2/i/e/c$a;->fR:I

    return-void
.end method

.method public static ai(Ljava/lang/String;)Lcom/applovin/exoplayer2/i/e/c$a;
    .registers 15
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, ","

    invoke-static {p0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    :goto_16
    array-length v4, p0

    if-ge v3, v4, :cond_9e

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/applovin/exoplayer2/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_aa

    :goto_2d
    const/4 v4, -0x1

    goto/16 :goto_87

    :sswitch_30
    const-string v13, "alignment"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    goto :goto_2d

    :cond_39
    const/4 v4, 0x7

    goto :goto_87

    :sswitch_3b
    const-string v13, "fontsize"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    goto :goto_2d

    :cond_44
    const/4 v4, 0x6

    goto :goto_87

    :sswitch_46
    const-string v13, "name"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    goto :goto_2d

    :cond_4f
    const/4 v4, 0x5

    goto :goto_87

    :sswitch_51
    const-string v13, "bold"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5a

    goto :goto_2d

    :cond_5a
    const/4 v4, 0x4

    goto :goto_87

    :sswitch_5c
    const-string v13, "primarycolour"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    goto :goto_2d

    :cond_65
    const/4 v4, 0x3

    goto :goto_87

    :sswitch_67
    const-string v13, "strikeout"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_70

    goto :goto_2d

    :cond_70
    const/4 v4, 0x2

    goto :goto_87

    :sswitch_72
    const-string v13, "underline"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7b

    goto :goto_2d

    :cond_7b
    const/4 v4, 0x1

    goto :goto_87

    :sswitch_7d
    const-string v13, "italic"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_86

    goto :goto_2d

    :cond_86
    const/4 v4, 0x0

    :goto_87
    packed-switch v4, :pswitch_data_cc

    goto :goto_9a

    :pswitch_8b
    move v6, v3

    goto :goto_9a

    :pswitch_8d
    move v8, v3

    goto :goto_9a

    :pswitch_8f
    move v5, v3

    goto :goto_9a

    :pswitch_91
    move v9, v3

    goto :goto_9a

    :pswitch_93
    move v7, v3

    goto :goto_9a

    :pswitch_95
    move v12, v3

    goto :goto_9a

    :pswitch_97
    move v11, v3

    goto :goto_9a

    :pswitch_99
    move v10, v3

    :goto_9a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_16

    :cond_9e
    if-eq v5, v2, :cond_a8

    new-instance v0, Lcom/applovin/exoplayer2/i/e/c$a;

    array-length v13, p0

    move-object v4, v0

    invoke-direct/range {v4 .. v13}, Lcom/applovin/exoplayer2/i/e/c$a;-><init>(IIIIIIIII)V

    goto :goto_a9

    :cond_a8
    const/4 v0, 0x0

    :goto_a9
    return-object v0

    :sswitch_data_aa
    .sparse-switch
        -0x4642c5d0 -> :sswitch_7d
        -0x3d363934 -> :sswitch_72
        -0xb7325a4 -> :sswitch_67
        -0x43a3db2 -> :sswitch_5c
        0x2e3a85 -> :sswitch_51
        0x337a8b -> :sswitch_46
        0x15d92cd0 -> :sswitch_3b
        0x695fa1e3 -> :sswitch_30
    .end sparse-switch

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_99
        :pswitch_97
        :pswitch_95
        :pswitch_93
        :pswitch_91
        :pswitch_8f
        :pswitch_8d
        :pswitch_8b
    .end packed-switch
.end method

###### Class com.applovin.exoplayer2.i.e.c.b (com.applovin.exoplayer2.i.e.c$b)
.class final Lcom/applovin/exoplayer2/i/e/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/i/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# static fields
.field private static final RQ:Ljava/util/regex/Pattern;

.field private static final RR:Ljava/util/regex/Pattern;

.field private static final RT:Ljava/util/regex/Pattern;

.field private static final RU:Ljava/util/regex/Pattern;


# instance fields
.field public final RC:I

.field public final RV:Landroid/graphics/PointF;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-string v0, "\\{([^}]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/i/e/c$b;->RQ:Ljava/util/regex/Pattern;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "\\s*\\d+(?:\\.\\d+)?\\s*"

    aput-object v3, v1, v2

    const-string v4, "\\\\pos\\((%1$s),(%1$s)\\)"

    invoke-static {v4, v1}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lcom/applovin/exoplayer2/i/e/c$b;->RR:Ljava/util/regex/Pattern;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v2

    const-string v1, "\\\\move\\(%1$s,%1$s,(%1$s),(%1$s)(?:,%1$s,%1$s)?\\)"

    invoke-static {v1, v0}, Lcom/applovin/exoplayer2/l/ai;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/i/e/c$b;->RT:Ljava/util/regex/Pattern;

    const-string v0, "\\\\an(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/applovin/exoplayer2/i/e/c$b;->RU:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(ILandroid/graphics/PointF;)V
    .registers 3
    .param p2    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/applovin/exoplayer2/i/e/c$b;->RC:I

    iput-object p2, p0, Lcom/applovin/exoplayer2/i/e/c$b;->RV:Landroid/graphics/PointF;

    return-void
.end method

.method public static aj(Ljava/lang/String;)Lcom/applovin/exoplayer2/i/e/c$b;
    .registers 6

    sget-object v0, Lcom/applovin/exoplayer2/i/e/c$b;->RQ:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :cond_9
    :goto_9
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_1a
    invoke-static {v3}, Lcom/applovin/exoplayer2/i/e/c$b;->al(Ljava/lang/String;)Landroid/graphics/PointF;

    move-result-object v4
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1e} :catch_21

    if-eqz v4, :cond_21

    move-object v1, v4

    :catch_21
    :cond_21
    :try_start_21
    invoke-static {v3}, Lcom/applovin/exoplayer2/i/e/c$b;->am(Ljava/lang/String;)I

    move-result v3
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_25} :catch_29

    if-eq v3, v0, :cond_9

    move v2, v3

    goto :goto_9

    :catch_29
    nop

    goto :goto_9

    :cond_2b
    new-instance p0, Lcom/applovin/exoplayer2/i/e/c$b;

    invoke-direct {p0, v2, v1}, Lcom/applovin/exoplayer2/i/e/c$b;-><init>(ILandroid/graphics/PointF;)V

    return-object p0
.end method

.method public static ak(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/applovin/exoplayer2/i/e/c$b;->RQ:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static al(Ljava/lang/String;)Landroid/graphics/PointF;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/applovin/exoplayer2/i/e/c$b;->RR:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    sget-object v1, Lcom/applovin/exoplayer2/i/e/c$b;->RT:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3e

    if-eqz v3, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Override has both \\pos(x,y) and \\move(x1,y1,x2,y2); using \\pos values. override=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SsaStyle.Overrides"

    invoke-static {v1, p0}, Lcom/applovin/exoplayer2/l/q;->g(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    :cond_3e
    if-eqz v3, :cond_6a

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :goto_48
    new-instance v1, Landroid/graphics/PointF;

    invoke-static {p0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    invoke-static {v0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-direct {v1, p0, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1

    :cond_6a
    const/4 p0, 0x0

    return-object p0
.end method

.method private static am(Ljava/lang/String;)I
    .registers 2

    sget-object v0, Lcom/applovin/exoplayer2/i/e/c$b;->RU:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/exoplayer2/l/a;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/applovin/exoplayer2/i/e/c;->ah(Ljava/lang/String;)I

    move-result p0

    goto :goto_1d

    :cond_1c
    const/4 p0, -0x1

    :goto_1d
    return p0
.end method

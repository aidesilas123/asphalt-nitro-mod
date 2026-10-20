###### Class com.fyber.inneractive.sdk.protobuf.r1 (com.fyber.inneractive.sdk.protobuf.r1)
.class public final Lcom/fyber/inneractive/sdk/protobuf/r1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/protobuf/r1$d;,
        Lcom/fyber/inneractive/sdk/protobuf/r1$b;,
        Lcom/fyber/inneractive/sdk/protobuf/r1$c;
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:I

.field public static final c:I

.field public static final d:I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result v2

    sput v2, Lcom/fyber/inneractive/sdk/protobuf/r1;->a:I

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result v0

    sput v0, Lcom/fyber/inneractive/sdk/protobuf/r1;->b:I

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result v2

    sput v2, Lcom/fyber/inneractive/sdk/protobuf/r1;->c:I

    invoke-static {v1, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1;->a(II)I

    move-result v0

    sput v0, Lcom/fyber/inneractive/sdk/protobuf/r1;->d:I

    return-void
.end method

.method public static a(II)I
    .registers 2

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method public static a(Lcom/fyber/inneractive/sdk/protobuf/j;Lcom/fyber/inneractive/sdk/protobuf/r1$b;Lcom/fyber/inneractive/sdk/protobuf/r1$d;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_aa

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle enums."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_2b
    invoke-virtual {p2, p0}, Lcom/fyber/inneractive/sdk/protobuf/r1$d;->a(Lcom/fyber/inneractive/sdk/protobuf/j;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_30
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j;->q()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_39
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j;->p()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_42
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j;->o()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_4b
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j;->n()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_54
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j;->u()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5d
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j;->e()Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object p0

    return-object p0

    :pswitch_62
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j;->d()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_6b
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j;->h()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_74
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j;->i()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_7d
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j;->k()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_86
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j;->v()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_8f
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j;->l()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_98
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j;->j()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_a1
    invoke-virtual {p0}, Lcom/fyber/inneractive/sdk/protobuf/j;->f()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_a1
        :pswitch_98
        :pswitch_8f
        :pswitch_86
        :pswitch_7d
        :pswitch_74
        :pswitch_6b
        :pswitch_62
        :pswitch_5d
        :pswitch_54
        :pswitch_4b
        :pswitch_42
        :pswitch_39
        :pswitch_30
        :pswitch_2b
        :pswitch_23
        :pswitch_1b
        :pswitch_13
    .end packed-switch
.end method

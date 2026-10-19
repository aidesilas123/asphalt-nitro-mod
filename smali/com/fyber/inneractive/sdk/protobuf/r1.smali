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

###### Class com.fyber.inneractive.sdk.protobuf.r1.a (com.fyber.inneractive.sdk.protobuf.r1$a)
.class public synthetic Lcom/fyber/inneractive/sdk/protobuf/r1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->values()[Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$a;->a:[I

    :try_start_9
    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->DOUBLE:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->FLOAT:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->INT64:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->UINT64:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->INT32:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->FIXED64:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    :try_start_49
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->FIXED32:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->BOOL:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_60} :catch_60

    :catch_60
    :try_start_60
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->BYTES:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6c} :catch_6c

    :catch_6c
    :try_start_6c
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->UINT32:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_78
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6c .. :try_end_78} :catch_78

    :catch_78
    :try_start_78
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->SFIXED32:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_84
    .catch Ljava/lang/NoSuchFieldError; {:try_start_78 .. :try_end_84} :catch_84

    :catch_84
    :try_start_84
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->SFIXED64:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_90
    .catch Ljava/lang/NoSuchFieldError; {:try_start_84 .. :try_end_90} :catch_90

    :catch_90
    :try_start_90
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->SINT32:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_9c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_90 .. :try_end_9c} :catch_9c

    :catch_9c
    :try_start_9c
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->SINT64:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9c .. :try_end_a8} :catch_a8

    :catch_a8
    :try_start_a8
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->STRING:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a8 .. :try_end_b4} :catch_b4

    :catch_b4
    :try_start_b4
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->GROUP:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_c0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b4 .. :try_end_c0} :catch_c0

    :catch_c0
    :try_start_c0
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->MESSAGE:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c0 .. :try_end_cc} :catch_cc

    :catch_cc
    :try_start_cc
    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$a;->a:[I

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->ENUM:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_d8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_cc .. :try_end_d8} :catch_d8

    :catch_d8
    return-void
.end method

###### Class com.fyber.inneractive.sdk.protobuf.r1.b (com.fyber.inneractive.sdk.protobuf.r1$b)
.class public enum Lcom/fyber/inneractive/sdk/protobuf/r1$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/protobuf/r1$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/protobuf/r1$b;

.field public static final enum BOOL:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

.field public static final enum BYTES:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

.field public static final enum DOUBLE:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

.field public static final enum ENUM:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

.field public static final enum FIXED32:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

.field public static final enum FIXED64:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

.field public static final enum FLOAT:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

.field public static final enum GROUP:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

.field public static final enum INT32:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

.field public static final enum INT64:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

.field public static final enum MESSAGE:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

.field public static final enum SFIXED32:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

.field public static final enum SFIXED64:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

.field public static final enum SINT32:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

.field public static final enum SINT64:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

.field public static final enum STRING:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

.field public static final enum UINT32:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

.field public static final enum UINT64:Lcom/fyber/inneractive/sdk/protobuf/r1$b;


# instance fields
.field private final javaType:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

.field private final wireType:I


# direct methods
.method public static constructor <clinit>()V
    .registers 22

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    sget-object v1, Lcom/fyber/inneractive/sdk/protobuf/r1$c;->DOUBLE:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    const-string v2, "DOUBLE"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/fyber/inneractive/sdk/protobuf/r1$b;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V

    sput-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->DOUBLE:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    new-instance v1, Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    sget-object v2, Lcom/fyber/inneractive/sdk/protobuf/r1$c;->FLOAT:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    const-string v5, "FLOAT"

    const/4 v6, 0x5

    invoke-direct {v1, v5, v4, v2, v6}, Lcom/fyber/inneractive/sdk/protobuf/r1$b;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V

    sput-object v1, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->FLOAT:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    new-instance v2, Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    sget-object v5, Lcom/fyber/inneractive/sdk/protobuf/r1$c;->LONG:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    const-string v7, "INT64"

    const/4 v8, 0x2

    invoke-direct {v2, v7, v8, v5, v3}, Lcom/fyber/inneractive/sdk/protobuf/r1$b;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V

    sput-object v2, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->INT64:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    new-instance v7, Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    const-string v9, "UINT64"

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10, v5, v3}, Lcom/fyber/inneractive/sdk/protobuf/r1$b;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V

    sput-object v7, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->UINT64:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    new-instance v9, Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    sget-object v11, Lcom/fyber/inneractive/sdk/protobuf/r1$c;->INT:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    const-string v12, "INT32"

    const/4 v13, 0x4

    invoke-direct {v9, v12, v13, v11, v3}, Lcom/fyber/inneractive/sdk/protobuf/r1$b;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V

    sput-object v9, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->INT32:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    new-instance v12, Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    const-string v14, "FIXED64"

    invoke-direct {v12, v14, v6, v5, v4}, Lcom/fyber/inneractive/sdk/protobuf/r1$b;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V

    sput-object v12, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->FIXED64:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    new-instance v14, Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    const-string v15, "FIXED32"

    const/4 v13, 0x6

    invoke-direct {v14, v15, v13, v11, v6}, Lcom/fyber/inneractive/sdk/protobuf/r1$b;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V

    sput-object v14, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->FIXED32:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    new-instance v15, Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    sget-object v13, Lcom/fyber/inneractive/sdk/protobuf/r1$c;->BOOLEAN:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    const-string v4, "BOOL"

    const/4 v6, 0x7

    invoke-direct {v15, v4, v6, v13, v3}, Lcom/fyber/inneractive/sdk/protobuf/r1$b;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V

    sput-object v15, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->BOOL:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    new-instance v4, Lcom/fyber/inneractive/sdk/protobuf/r1$b$a;

    sget-object v13, Lcom/fyber/inneractive/sdk/protobuf/r1$c;->STRING:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    const-string v6, "STRING"

    const/16 v3, 0x8

    invoke-direct {v4, v6, v3, v13, v8}, Lcom/fyber/inneractive/sdk/protobuf/r1$b$a;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V

    sput-object v4, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->STRING:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    new-instance v6, Lcom/fyber/inneractive/sdk/protobuf/r1$b$b;

    sget-object v13, Lcom/fyber/inneractive/sdk/protobuf/r1$c;->MESSAGE:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    const-string v3, "GROUP"

    const/16 v8, 0x9

    invoke-direct {v6, v3, v8, v13, v10}, Lcom/fyber/inneractive/sdk/protobuf/r1$b$b;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V

    sput-object v6, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->GROUP:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    new-instance v3, Lcom/fyber/inneractive/sdk/protobuf/r1$b$c;

    const-string v8, "MESSAGE"

    const/16 v10, 0xa

    move-object/from16 v16, v6

    const/4 v6, 0x2

    invoke-direct {v3, v8, v10, v13, v6}, Lcom/fyber/inneractive/sdk/protobuf/r1$b$c;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V

    sput-object v3, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->MESSAGE:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    new-instance v8, Lcom/fyber/inneractive/sdk/protobuf/r1$b$d;

    sget-object v13, Lcom/fyber/inneractive/sdk/protobuf/r1$c;->BYTE_STRING:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    const-string v10, "BYTES"

    move-object/from16 v17, v3

    const/16 v3, 0xb

    invoke-direct {v8, v10, v3, v13, v6}, Lcom/fyber/inneractive/sdk/protobuf/r1$b$d;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V

    sput-object v8, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->BYTES:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    new-instance v6, Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    const-string v10, "UINT32"

    const/16 v13, 0xc

    const/4 v3, 0x0

    invoke-direct {v6, v10, v13, v11, v3}, Lcom/fyber/inneractive/sdk/protobuf/r1$b;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V

    sput-object v6, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->UINT32:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    new-instance v10, Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    sget-object v13, Lcom/fyber/inneractive/sdk/protobuf/r1$c;->ENUM:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    move-object/from16 v18, v6

    const-string v6, "ENUM"

    move-object/from16 v19, v8

    const/16 v8, 0xd

    invoke-direct {v10, v6, v8, v13, v3}, Lcom/fyber/inneractive/sdk/protobuf/r1$b;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V

    sput-object v10, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->ENUM:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    new-instance v3, Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    const-string v6, "SFIXED32"

    const/16 v13, 0xe

    const/4 v8, 0x5

    invoke-direct {v3, v6, v13, v11, v8}, Lcom/fyber/inneractive/sdk/protobuf/r1$b;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V

    sput-object v3, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->SFIXED32:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    new-instance v6, Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    const-string v8, "SFIXED64"

    const/16 v13, 0xf

    move-object/from16 v20, v3

    const/4 v3, 0x1

    invoke-direct {v6, v8, v13, v5, v3}, Lcom/fyber/inneractive/sdk/protobuf/r1$b;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V

    sput-object v6, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->SFIXED64:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    new-instance v3, Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    const-string v8, "SINT32"

    const/16 v13, 0x10

    move-object/from16 v21, v6

    const/4 v6, 0x0

    invoke-direct {v3, v8, v13, v11, v6}, Lcom/fyber/inneractive/sdk/protobuf/r1$b;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V

    sput-object v3, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->SINT32:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    new-instance v8, Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    const-string v11, "SINT64"

    const/16 v13, 0x11

    invoke-direct {v8, v11, v13, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/r1$b;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V

    sput-object v8, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->SINT64:Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    const/16 v5, 0x12

    new-array v5, v5, [Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v7, v5, v0

    const/4 v0, 0x4

    aput-object v9, v5, v0

    const/4 v0, 0x5

    aput-object v12, v5, v0

    const/4 v0, 0x6

    aput-object v14, v5, v0

    const/4 v0, 0x7

    aput-object v15, v5, v0

    const/16 v0, 0x8

    aput-object v4, v5, v0

    const/16 v0, 0x9

    aput-object v16, v5, v0

    const/16 v0, 0xa

    aput-object v17, v5, v0

    const/16 v0, 0xb

    aput-object v19, v5, v0

    const/16 v0, 0xc

    aput-object v18, v5, v0

    const/16 v0, 0xd

    aput-object v10, v5, v0

    const/16 v0, 0xe

    aput-object v20, v5, v0

    const/16 v0, 0xf

    aput-object v21, v5, v0

    const/16 v0, 0x10

    aput-object v3, v5, v0

    aput-object v8, v5, v13

    sput-object v5, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->$VALUES:[Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/inneractive/sdk/protobuf/r1$c;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->javaType:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    iput p4, p0, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->wireType:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;ILcom/fyber/inneractive/sdk/protobuf/r1$a;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fyber/inneractive/sdk/protobuf/r1$b;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/r1$b;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/protobuf/r1$b;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->$VALUES:[Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/protobuf/r1$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/protobuf/r1$b;

    return-object v0
.end method


# virtual methods
.method public e()Lcom/fyber/inneractive/sdk/protobuf/r1$c;
    .registers 2

    iget-object v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->javaType:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    return-object v0
.end method

.method public f()I
    .registers 2

    iget v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r1$b;->wireType:I

    return v0
.end method

.method public g()Z
    .registers 2

    instance-of v0, p0, Lcom/fyber/inneractive/sdk/protobuf/r1$b$a;

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

###### Class com.fyber.inneractive.sdk.protobuf.r1.b.a (com.fyber.inneractive.sdk.protobuf.r1$b$a)
.class public final enum Lcom/fyber/inneractive/sdk/protobuf/r1$b$a;
.super Lcom/fyber/inneractive/sdk/protobuf/r1$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/r1$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fyber/inneractive/sdk/protobuf/r1$b;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;ILcom/fyber/inneractive/sdk/protobuf/r1$a;)V

    return-void
.end method

###### Class com.fyber.inneractive.sdk.protobuf.r1.b.C0196b (com.fyber.inneractive.sdk.protobuf.r1$b$b)
.class public final enum Lcom/fyber/inneractive/sdk/protobuf/r1$b$b;
.super Lcom/fyber/inneractive/sdk/protobuf/r1$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/r1$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fyber/inneractive/sdk/protobuf/r1$b;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;ILcom/fyber/inneractive/sdk/protobuf/r1$a;)V

    return-void
.end method


# virtual methods
.method public g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class com.fyber.inneractive.sdk.protobuf.r1.b.c (com.fyber.inneractive.sdk.protobuf.r1$b$c)
.class public final enum Lcom/fyber/inneractive/sdk/protobuf/r1$b$c;
.super Lcom/fyber/inneractive/sdk/protobuf/r1$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/r1$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fyber/inneractive/sdk/protobuf/r1$b;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;ILcom/fyber/inneractive/sdk/protobuf/r1$a;)V

    return-void
.end method


# virtual methods
.method public g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class com.fyber.inneractive.sdk.protobuf.r1.b.d (com.fyber.inneractive.sdk.protobuf.r1$b$d)
.class public final enum Lcom/fyber/inneractive/sdk/protobuf/r1$b$d;
.super Lcom/fyber/inneractive/sdk/protobuf/r1$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/r1$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;I)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/fyber/inneractive/sdk/protobuf/r1$b;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$c;ILcom/fyber/inneractive/sdk/protobuf/r1$a;)V

    return-void
.end method


# virtual methods
.method public g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

###### Class com.fyber.inneractive.sdk.protobuf.r1.c (com.fyber.inneractive.sdk.protobuf.r1$c)
.class public final enum Lcom/fyber/inneractive/sdk/protobuf/r1$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/protobuf/r1$c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/protobuf/r1$c;

.field public static final enum BOOLEAN:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

.field public static final enum BYTE_STRING:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

.field public static final enum DOUBLE:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

.field public static final enum ENUM:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

.field public static final enum FLOAT:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

.field public static final enum INT:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

.field public static final enum LONG:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

.field public static final enum MESSAGE:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

.field public static final enum STRING:Lcom/fyber/inneractive/sdk/protobuf/r1$c;


# instance fields
.field private final defaultDefault:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 16

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "INT"

    invoke-direct {v0, v3, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r1$c;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$c;->INT:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    new-instance v2, Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "LONG"

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lcom/fyber/inneractive/sdk/protobuf/r1$c;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v2, Lcom/fyber/inneractive/sdk/protobuf/r1$c;->LONG:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    new-instance v3, Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const-string v6, "FLOAT"

    const/4 v7, 0x2

    invoke-direct {v3, v6, v7, v4}, Lcom/fyber/inneractive/sdk/protobuf/r1$c;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v3, Lcom/fyber/inneractive/sdk/protobuf/r1$c;->FLOAT:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    new-instance v4, Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    const-string v8, "DOUBLE"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/fyber/inneractive/sdk/protobuf/r1$c;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v4, Lcom/fyber/inneractive/sdk/protobuf/r1$c;->DOUBLE:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    new-instance v6, Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v10, "BOOLEAN"

    const/4 v11, 0x4

    invoke-direct {v6, v10, v11, v8}, Lcom/fyber/inneractive/sdk/protobuf/r1$c;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v6, Lcom/fyber/inneractive/sdk/protobuf/r1$c;->BOOLEAN:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    new-instance v8, Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    const-string v10, "STRING"

    const/4 v12, 0x5

    const-string v13, ""

    invoke-direct {v8, v10, v12, v13}, Lcom/fyber/inneractive/sdk/protobuf/r1$c;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v8, Lcom/fyber/inneractive/sdk/protobuf/r1$c;->STRING:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    new-instance v10, Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    sget-object v13, Lcom/fyber/inneractive/sdk/protobuf/i;->b:Lcom/fyber/inneractive/sdk/protobuf/i;

    const-string v14, "BYTE_STRING"

    const/4 v15, 0x6

    invoke-direct {v10, v14, v15, v13}, Lcom/fyber/inneractive/sdk/protobuf/r1$c;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v10, Lcom/fyber/inneractive/sdk/protobuf/r1$c;->BYTE_STRING:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    new-instance v13, Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    const-string v14, "ENUM"

    const/4 v15, 0x7

    const/4 v12, 0x0

    invoke-direct {v13, v14, v15, v12}, Lcom/fyber/inneractive/sdk/protobuf/r1$c;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v13, Lcom/fyber/inneractive/sdk/protobuf/r1$c;->ENUM:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    new-instance v14, Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    const-string v15, "MESSAGE"

    const/16 v11, 0x8

    invoke-direct {v14, v15, v11, v12}, Lcom/fyber/inneractive/sdk/protobuf/r1$c;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    sput-object v14, Lcom/fyber/inneractive/sdk/protobuf/r1$c;->MESSAGE:Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    const/16 v12, 0x9

    new-array v12, v12, [Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    aput-object v0, v12, v1

    aput-object v2, v12, v5

    aput-object v3, v12, v7

    aput-object v4, v12, v9

    const/4 v0, 0x4

    aput-object v6, v12, v0

    const/4 v0, 0x5

    aput-object v8, v12, v0

    const/4 v0, 0x6

    aput-object v10, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    aput-object v14, v12, v11

    sput-object v12, Lcom/fyber/inneractive/sdk/protobuf/r1$c;->$VALUES:[Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/fyber/inneractive/sdk/protobuf/r1$c;->defaultDefault:Ljava/lang/Object;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/r1$c;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/protobuf/r1$c;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$c;->$VALUES:[Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/protobuf/r1$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/protobuf/r1$c;

    return-object v0
.end method

###### Class com.fyber.inneractive.sdk.protobuf.r1.d (com.fyber.inneractive.sdk.protobuf.r1$d)
.class public abstract enum Lcom/fyber/inneractive/sdk/protobuf/r1$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/fyber/inneractive/sdk/protobuf/r1$d;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/fyber/inneractive/sdk/protobuf/r1$d;

.field public static final enum LAZY:Lcom/fyber/inneractive/sdk/protobuf/r1$d;

.field public static final enum LOOSE:Lcom/fyber/inneractive/sdk/protobuf/r1$d;

.field public static final enum STRICT:Lcom/fyber/inneractive/sdk/protobuf/r1$d;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/r1$d$a;

    const-string v1, "LOOSE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/fyber/inneractive/sdk/protobuf/r1$d$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$d;->LOOSE:Lcom/fyber/inneractive/sdk/protobuf/r1$d;

    new-instance v1, Lcom/fyber/inneractive/sdk/protobuf/r1$d$b;

    const-string v3, "STRICT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/fyber/inneractive/sdk/protobuf/r1$d$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/fyber/inneractive/sdk/protobuf/r1$d;->STRICT:Lcom/fyber/inneractive/sdk/protobuf/r1$d;

    new-instance v3, Lcom/fyber/inneractive/sdk/protobuf/r1$d$c;

    const-string v5, "LAZY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/fyber/inneractive/sdk/protobuf/r1$d$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/fyber/inneractive/sdk/protobuf/r1$d;->LAZY:Lcom/fyber/inneractive/sdk/protobuf/r1$d;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/fyber/inneractive/sdk/protobuf/r1$d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/fyber/inneractive/sdk/protobuf/r1$d;->$VALUES:[Lcom/fyber/inneractive/sdk/protobuf/r1$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/fyber/inneractive/sdk/protobuf/r1$d;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/inneractive/sdk/protobuf/r1$d;
    .registers 2

    const-class v0, Lcom/fyber/inneractive/sdk/protobuf/r1$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/fyber/inneractive/sdk/protobuf/r1$d;

    return-object p0
.end method

.method public static values()[Lcom/fyber/inneractive/sdk/protobuf/r1$d;
    .registers 1

    sget-object v0, Lcom/fyber/inneractive/sdk/protobuf/r1$d;->$VALUES:[Lcom/fyber/inneractive/sdk/protobuf/r1$d;

    invoke-virtual {v0}, [Lcom/fyber/inneractive/sdk/protobuf/r1$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/inneractive/sdk/protobuf/r1$d;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/fyber/inneractive/sdk/protobuf/j;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class com.fyber.inneractive.sdk.protobuf.r1.d.a (com.fyber.inneractive.sdk.protobuf.r1$d$a)
.class public final enum Lcom/fyber/inneractive/sdk/protobuf/r1$d$a;
.super Lcom/fyber/inneractive/sdk/protobuf/r1$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/r1$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1$d;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/protobuf/j;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/j;->r()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class com.fyber.inneractive.sdk.protobuf.r1.d.b (com.fyber.inneractive.sdk.protobuf.r1$d$b)
.class public final enum Lcom/fyber/inneractive/sdk/protobuf/r1$d$b;
.super Lcom/fyber/inneractive/sdk/protobuf/r1$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/r1$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1$d;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/protobuf/j;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/j;->s()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

###### Class com.fyber.inneractive.sdk.protobuf.r1.d.c (com.fyber.inneractive.sdk.protobuf.r1$d$c)
.class public final enum Lcom/fyber/inneractive/sdk/protobuf/r1$d$c;
.super Lcom/fyber/inneractive/sdk/protobuf/r1$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/inneractive/sdk/protobuf/r1$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/fyber/inneractive/sdk/protobuf/r1$d;-><init>(Ljava/lang/String;ILcom/fyber/inneractive/sdk/protobuf/r1$a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/protobuf/j;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fyber/inneractive/sdk/protobuf/j;->e()Lcom/fyber/inneractive/sdk/protobuf/i;

    move-result-object p1

    return-object p1
.end method

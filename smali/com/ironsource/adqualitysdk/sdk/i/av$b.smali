###### Class com.ironsource.adqualitysdk.sdk.i.av.b (com.ironsource.adqualitysdk.sdk.i.av$b)
.class final synthetic Lcom/ironsource/adqualitysdk/sdk/i/av$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adqualitysdk/sdk/i/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->values()[Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$b;->b:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ﱟ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/ironsource/adqualitysdk/sdk/i/av$b;->b:[I

    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/ironsource/adqualitysdk/sdk/i/av$b;->b:[I

    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    const/4 v3, 0x4

    :try_start_29
    sget-object v4, Lcom/ironsource/adqualitysdk/sdk/i/av$b;->b:[I

    sget-object v5, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ﻛ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_33} :catch_33

    :catch_33
    const/4 v4, 0x5

    :try_start_34
    sget-object v5, Lcom/ironsource/adqualitysdk/sdk/i/av$b;->b:[I

    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/av$d;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/av$d;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3e} :catch_3e

    :catch_3e
    invoke-static {}, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->values()[Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/ironsource/adqualitysdk/sdk/i/av$b;->a:[I

    :try_start_47
    sget-object v6, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﻐ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_4f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_4f} :catch_4f

    :catch_4f
    :try_start_4f
    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/av$b;->a:[I

    sget-object v5, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ｋ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4f .. :try_end_59} :catch_59

    :catch_59
    :try_start_59
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$b;->a:[I

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﾒ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_59 .. :try_end_63} :catch_63

    :catch_63
    :try_start_63
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$b;->a:[I

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﮐ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_6d} :catch_6d

    :catch_6d
    :try_start_6d
    sget-object v0, Lcom/ironsource/adqualitysdk/sdk/i/av$b;->a:[I

    sget-object v1, Lcom/ironsource/adqualitysdk/sdk/i/av$a;->ﾇ:Lcom/ironsource/adqualitysdk/sdk/i/av$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_77} :catch_77

    :catch_77
    return-void
.end method

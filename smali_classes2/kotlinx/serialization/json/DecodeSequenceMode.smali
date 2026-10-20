###### Class kotlinx.serialization.json.DecodeSequenceMode (kotlinx.serialization.json.DecodeSequenceMode)
.class public final enum Lkotlinx/serialization/json/DecodeSequenceMode;
.super Ljava/lang/Enum;
.source "Json.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlinx/serialization/json/DecodeSequenceMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlinx/serialization/json/DecodeSequenceMode;",
        "",
        "(Ljava/lang/String;I)V",
        "WHITESPACE_SEPARATED",
        "ARRAY_WRAPPED",
        "AUTO_DETECT",
        "kotlinx-serialization-json"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum a:Lkotlinx/serialization/json/DecodeSequenceMode;

.field public static final enum b:Lkotlinx/serialization/json/DecodeSequenceMode;

.field public static final enum c:Lkotlinx/serialization/json/DecodeSequenceMode;

.field private static final synthetic d:[Lkotlinx/serialization/json/DecodeSequenceMode;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lkotlinx/serialization/json/DecodeSequenceMode;

    const-string v1, "WHITESPACE_SEPARATED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/DecodeSequenceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/serialization/json/DecodeSequenceMode;->a:Lkotlinx/serialization/json/DecodeSequenceMode;

    new-instance v0, Lkotlinx/serialization/json/DecodeSequenceMode;

    const-string v1, "ARRAY_WRAPPED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/DecodeSequenceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/serialization/json/DecodeSequenceMode;->b:Lkotlinx/serialization/json/DecodeSequenceMode;

    new-instance v0, Lkotlinx/serialization/json/DecodeSequenceMode;

    const-string v1, "AUTO_DETECT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/DecodeSequenceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/serialization/json/DecodeSequenceMode;->c:Lkotlinx/serialization/json/DecodeSequenceMode;

    invoke-static {}, Lkotlinx/serialization/json/DecodeSequenceMode;->e()[Lkotlinx/serialization/json/DecodeSequenceMode;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/json/DecodeSequenceMode;->d:[Lkotlinx/serialization/json/DecodeSequenceMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic e()[Lkotlinx/serialization/json/DecodeSequenceMode;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlinx/serialization/json/DecodeSequenceMode;

    sget-object v1, Lkotlinx/serialization/json/DecodeSequenceMode;->a:Lkotlinx/serialization/json/DecodeSequenceMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/json/DecodeSequenceMode;->b:Lkotlinx/serialization/json/DecodeSequenceMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lkotlinx/serialization/json/DecodeSequenceMode;->c:Lkotlinx/serialization/json/DecodeSequenceMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/serialization/json/DecodeSequenceMode;
    .registers 2

    const-class v0, Lkotlinx/serialization/json/DecodeSequenceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/json/DecodeSequenceMode;

    return-object p0
.end method

.method public static values()[Lkotlinx/serialization/json/DecodeSequenceMode;
    .registers 1

    sget-object v0, Lkotlinx/serialization/json/DecodeSequenceMode;->d:[Lkotlinx/serialization/json/DecodeSequenceMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/serialization/json/DecodeSequenceMode;

    return-object v0
.end method

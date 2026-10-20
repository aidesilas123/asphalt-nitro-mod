###### Class kotlin.io.path.OnErrorResult (kotlin.io.path.OnErrorResult)
.class public final enum Lkotlin/io/path/OnErrorResult;
.super Ljava/lang/Enum;
.source "OnErrorResult.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/io/path/OnErrorResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0087\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lkotlin/io/path/OnErrorResult;",
        "",
        "(Ljava/lang/String;I)V",
        "SKIP_SUBTREE",
        "TERMINATE",
        "kotlin-stdlib-jdk7"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum a:Lkotlin/io/path/OnErrorResult;

.field public static final enum b:Lkotlin/io/path/OnErrorResult;

.field private static final synthetic c:[Lkotlin/io/path/OnErrorResult;

.field private static final synthetic d:Lkotlin/enums/a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lkotlin/io/path/OnErrorResult;

    const-string v1, "SKIP_SUBTREE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/io/path/OnErrorResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/io/path/OnErrorResult;->a:Lkotlin/io/path/OnErrorResult;

    new-instance v0, Lkotlin/io/path/OnErrorResult;

    const-string v1, "TERMINATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlin/io/path/OnErrorResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/io/path/OnErrorResult;->b:Lkotlin/io/path/OnErrorResult;

    invoke-static {}, Lkotlin/io/path/OnErrorResult;->e()[Lkotlin/io/path/OnErrorResult;

    move-result-object v0

    sput-object v0, Lkotlin/io/path/OnErrorResult;->c:[Lkotlin/io/path/OnErrorResult;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/a;

    move-result-object v0

    sput-object v0, Lkotlin/io/path/OnErrorResult;->d:Lkotlin/enums/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic e()[Lkotlin/io/path/OnErrorResult;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/io/path/OnErrorResult;

    sget-object v1, Lkotlin/io/path/OnErrorResult;->a:Lkotlin/io/path/OnErrorResult;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/io/path/OnErrorResult;->b:Lkotlin/io/path/OnErrorResult;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/a<",
            "Lkotlin/io/path/OnErrorResult;",
            ">;"
        }
    .end annotation

    sget-object v0, Lkotlin/io/path/OnErrorResult;->d:Lkotlin/enums/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/io/path/OnErrorResult;
    .registers 2

    const-class v0, Lkotlin/io/path/OnErrorResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/io/path/OnErrorResult;

    return-object p0
.end method

.method public static values()[Lkotlin/io/path/OnErrorResult;
    .registers 1

    sget-object v0, Lkotlin/io/path/OnErrorResult;->c:[Lkotlin/io/path/OnErrorResult;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/io/path/OnErrorResult;

    return-object v0
.end method

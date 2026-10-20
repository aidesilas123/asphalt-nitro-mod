###### Class kotlin.internal.RequireKotlinVersionKind (kotlin.internal.RequireKotlinVersionKind)
.class public final enum Lkotlin/internal/RequireKotlinVersionKind;
.super Ljava/lang/Enum;
.source "Annotations.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlin/internal/RequireKotlinVersionKind;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0081\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lkotlin/internal/RequireKotlinVersionKind;",
        "",
        "(Ljava/lang/String;I)V",
        "LANGUAGE_VERSION",
        "COMPILER_VERSION",
        "API_VERSION",
        "kotlin-stdlib"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum a:Lkotlin/internal/RequireKotlinVersionKind;

.field public static final enum b:Lkotlin/internal/RequireKotlinVersionKind;

.field public static final enum c:Lkotlin/internal/RequireKotlinVersionKind;

.field private static final synthetic d:[Lkotlin/internal/RequireKotlinVersionKind;

.field private static final synthetic e:Lkotlin/enums/a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lkotlin/internal/RequireKotlinVersionKind;

    const-string v1, "LANGUAGE_VERSION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/internal/RequireKotlinVersionKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/internal/RequireKotlinVersionKind;->a:Lkotlin/internal/RequireKotlinVersionKind;

    new-instance v0, Lkotlin/internal/RequireKotlinVersionKind;

    const-string v1, "COMPILER_VERSION"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlin/internal/RequireKotlinVersionKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/internal/RequireKotlinVersionKind;->b:Lkotlin/internal/RequireKotlinVersionKind;

    new-instance v0, Lkotlin/internal/RequireKotlinVersionKind;

    const-string v1, "API_VERSION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lkotlin/internal/RequireKotlinVersionKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/internal/RequireKotlinVersionKind;->c:Lkotlin/internal/RequireKotlinVersionKind;

    invoke-static {}, Lkotlin/internal/RequireKotlinVersionKind;->e()[Lkotlin/internal/RequireKotlinVersionKind;

    move-result-object v0

    sput-object v0, Lkotlin/internal/RequireKotlinVersionKind;->d:[Lkotlin/internal/RequireKotlinVersionKind;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/a;

    move-result-object v0

    sput-object v0, Lkotlin/internal/RequireKotlinVersionKind;->e:Lkotlin/enums/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static final synthetic e()[Lkotlin/internal/RequireKotlinVersionKind;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/internal/RequireKotlinVersionKind;

    sget-object v1, Lkotlin/internal/RequireKotlinVersionKind;->a:Lkotlin/internal/RequireKotlinVersionKind;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/internal/RequireKotlinVersionKind;->b:Lkotlin/internal/RequireKotlinVersionKind;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lkotlin/internal/RequireKotlinVersionKind;->c:Lkotlin/internal/RequireKotlinVersionKind;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getEntries()Lkotlin/enums/a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/a<",
            "Lkotlin/internal/RequireKotlinVersionKind;",
            ">;"
        }
    .end annotation

    sget-object v0, Lkotlin/internal/RequireKotlinVersionKind;->e:Lkotlin/enums/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlin/internal/RequireKotlinVersionKind;
    .registers 2

    const-class v0, Lkotlin/internal/RequireKotlinVersionKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlin/internal/RequireKotlinVersionKind;

    return-object p0
.end method

.method public static values()[Lkotlin/internal/RequireKotlinVersionKind;
    .registers 1

    sget-object v0, Lkotlin/internal/RequireKotlinVersionKind;->d:[Lkotlin/internal/RequireKotlinVersionKind;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/internal/RequireKotlinVersionKind;

    return-object v0
.end method

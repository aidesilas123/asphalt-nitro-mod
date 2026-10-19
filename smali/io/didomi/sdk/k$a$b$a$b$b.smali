###### Class io.didomi.drawable.C1806k.a.b.C0481a.C0483b.EnumC0488b (io.didomi.sdk.k$a$b$a$b$b)
.class public final enum Lio/didomi/sdk/k$a$b$a$b$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/k$a$b$a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/k$a$b$a$b$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/didomi/sdk/k$a$b$a$b$b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u0000 \u00082\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/didomi/sdk/k$a$b$a$b$b;",
        "",
        "",
        "value",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "a",
        "Ljava/lang/String;",
        "b",
        "()Ljava/lang/String;",
        "c",
        "d",
        "e",
        "f",
        "g",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final b:Lio/didomi/sdk/k$a$b$a$b$b$a;

.field public static final enum c:Lio/didomi/sdk/k$a$b$a$b$b;

.field public static final enum d:Lio/didomi/sdk/k$a$b$a$b$b;

.field public static final enum e:Lio/didomi/sdk/k$a$b$a$b$b;

.field public static final enum f:Lio/didomi/sdk/k$a$b$a$b$b;

.field public static final enum g:Lio/didomi/sdk/k$a$b$a$b$b;

.field private static final synthetic h:[Lio/didomi/sdk/k$a$b$a$b$b;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lio/didomi/sdk/k$a$b$a$b$b;

    const-string v1, "ALLOW"

    const/4 v2, 0x0

    const-string v3, "allow"

    invoke-direct {v0, v1, v2, v3}, Lio/didomi/sdk/k$a$b$a$b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/k$a$b$a$b$b;->c:Lio/didomi/sdk/k$a$b$a$b$b;

    new-instance v0, Lio/didomi/sdk/k$a$b$a$b$b;

    const-string v1, "DISALLOW"

    const/4 v2, 0x1

    const-string v3, "disallow"

    invoke-direct {v0, v1, v2, v3}, Lio/didomi/sdk/k$a$b$a$b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/k$a$b$a$b$b;->d:Lio/didomi/sdk/k$a$b$a$b$b;

    new-instance v0, Lio/didomi/sdk/k$a$b$a$b$b;

    const-string v1, "REQUIRE_CONSENT"

    const/4 v2, 0x2

    const-string v3, "req-consent"

    invoke-direct {v0, v1, v2, v3}, Lio/didomi/sdk/k$a$b$a$b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/k$a$b$a$b$b;->e:Lio/didomi/sdk/k$a$b$a$b$b;

    new-instance v0, Lio/didomi/sdk/k$a$b$a$b$b;

    const-string v1, "REQUIRE_LI"

    const/4 v2, 0x3

    const-string v3, "req-li"

    invoke-direct {v0, v1, v2, v3}, Lio/didomi/sdk/k$a$b$a$b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/k$a$b$a$b$b;->f:Lio/didomi/sdk/k$a$b$a$b$b;

    new-instance v0, Lio/didomi/sdk/k$a$b$a$b$b;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x4

    const-string v3, "unknown"

    invoke-direct {v0, v1, v2, v3}, Lio/didomi/sdk/k$a$b$a$b$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lio/didomi/sdk/k$a$b$a$b$b;->g:Lio/didomi/sdk/k$a$b$a$b$b;

    invoke-static {}, Lio/didomi/sdk/k$a$b$a$b$b;->a()[Lio/didomi/sdk/k$a$b$a$b$b;

    move-result-object v0

    sput-object v0, Lio/didomi/sdk/k$a$b$a$b$b;->h:[Lio/didomi/sdk/k$a$b$a$b$b;

    new-instance v0, Lio/didomi/sdk/k$a$b$a$b$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/k$a$b$a$b$b$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/k$a$b$a$b$b;->b:Lio/didomi/sdk/k$a$b$a$b$b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lio/didomi/sdk/k$a$b$a$b$b;->a:Ljava/lang/String;

    return-void
.end method

.method private static final synthetic a()[Lio/didomi/sdk/k$a$b$a$b$b;
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Lio/didomi/sdk/k$a$b$a$b$b;

    sget-object v1, Lio/didomi/sdk/k$a$b$a$b$b;->c:Lio/didomi/sdk/k$a$b$a$b$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/k$a$b$a$b$b;->d:Lio/didomi/sdk/k$a$b$a$b$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/k$a$b$a$b$b;->e:Lio/didomi/sdk/k$a$b$a$b$b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/k$a$b$a$b$b;->f:Lio/didomi/sdk/k$a$b$a$b$b;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lio/didomi/sdk/k$a$b$a$b$b;->g:Lio/didomi/sdk/k$a$b$a$b$b;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/didomi/sdk/k$a$b$a$b$b;
    .registers 2

    const-class v0, Lio/didomi/sdk/k$a$b$a$b$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/didomi/sdk/k$a$b$a$b$b;

    return-object p0
.end method

.method public static values()[Lio/didomi/sdk/k$a$b$a$b$b;
    .registers 1

    sget-object v0, Lio/didomi/sdk/k$a$b$a$b$b;->h:[Lio/didomi/sdk/k$a$b$a$b$b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/didomi/sdk/k$a$b$a$b$b;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k$a$b$a$b$b;->a:Ljava/lang/String;

    return-object v0
.end method

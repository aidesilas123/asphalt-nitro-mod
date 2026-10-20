###### Class io.didomi.drawable.M8 (io.didomi.sdk.M8)
.class public Lio/didomi/sdk/M8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/M8$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000e\u0008\u0017\u0018\u0000 \u00122\u00020\u0001:\u0001\u000bB\u0011\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0012\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0012\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u000f\u0010\n\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0008R\u001a\u0010\u0003\u001a\u00020\u00028\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\u000b\u0010\rR\"\u0010\u0011\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000e\u0010\u0008\"\u0004\u0008\u000b\u0010\u0010R\u001a\u0010\u0013\u001a\u00020\u00068\u0016X\u0096D\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u000f\u001a\u0004\u0008\u0012\u0010\u0008\u00a8\u0006\u0014"
    }
    d2 = {
        "Lio/didomi/sdk/M8;",
        "",
        "Landroid/content/SharedPreferences;",
        "sharedPreferences",
        "<init>",
        "(Landroid/content/SharedPreferences;)V",
        "",
        "c",
        "()Ljava/lang/String;",
        "f",
        "e",
        "a",
        "Landroid/content/SharedPreferences;",
        "()Landroid/content/SharedPreferences;",
        "b",
        "Ljava/lang/String;",
        "(Ljava/lang/String;)V",
        "userId",
        "d",
        "userIdType",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final d:Lio/didomi/sdk/M8$a;


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/M8$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/M8$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/M8;->d:Lio/didomi/sdk/M8$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 3

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/M8;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lio/didomi/sdk/M8;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/M8;->b:Ljava/lang/String;

    const-string p1, "uuid"

    iput-object p1, p0, Lio/didomi/sdk/M8;->c:Ljava/lang/String;

    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lio/didomi/sdk/M8;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "Didomi_User_Id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_11

    invoke-direct {p0}, Lio/didomi/sdk/M8;->f()Ljava/lang/String;

    move-result-object v0

    :cond_11
    const-string v1, "sharedPreferences.getStr\u2026?: resetUserIdInStorage()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .registers 4

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lio/didomi/sdk/M8;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "Didomi_User_Id"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "randomUUID().toString()\n\u2026       .apply()\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/M8;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/M8;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/M8;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/M8;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/M8;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/didomi/sdk/M8;->a(Ljava/lang/String;)V

    return-object v0
.end method

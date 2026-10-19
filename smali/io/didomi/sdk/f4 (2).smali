###### Class io.didomi.drawable.C1761f4 (io.didomi.sdk.f4)
.class public final Lio/didomi/sdk/f4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/didomi/sdk/f4;",
        "",
        "<init>",
        "()V",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "Lio/didomi/sdk/v3;",
        "languagesHelper",
        "",
        "a",
        "(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;)Ljava/lang/String;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lio/didomi/sdk/f4;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/f4;

    invoke-direct {v0}, Lio/didomi/sdk/f4;-><init>()V

    sput-object v0, Lio/didomi/sdk/f4;->a:Lio/didomi/sdk/f4;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;)Ljava/lang/String;
    .registers 6

    const-string v0, "configurationRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languagesHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/k;->f()Lio/didomi/sdk/k$g;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/k$g;->b()Lio/didomi/sdk/k$g$a;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/k$g$a;->l()Ljava/util/Map;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p2, p1, v1, v2, v1}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/util/Map;Lio/didomi/sdk/W5;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_33

    goto :goto_34

    :cond_33
    move-object v0, p1

    :goto_34
    return-object v0
.end method

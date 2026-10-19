###### Class io.didomi.drawable.B5 (io.didomi.sdk.B5)
.class public Lio/didomi/sdk/B5;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0017\u0018\u00002\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\"\u0010\u0005\u001a\u00020\u00048\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001b\u0010\u001a\u001a\u00020\u00168BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u000c\u0010\u0019R\u0014\u0010\u001d\u001a\u00020\u001b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0017\u0010\u001cR\u0011\u0010\u001f\u001a\u00020\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u001cR\u0011\u0010 \u001a\u00020\u001b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u001cR\u0011\u0010#\u001a\u00020!8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\"R#\u0010(\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001b0%0$8F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\'\u00a8\u0006)"
    }
    d2 = {
        "Lio/didomi/sdk/B5;",
        "Landroidx/lifecycle/ViewModel;",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "Lio/didomi/sdk/v3;",
        "languagesHelper",
        "Lio/didomi/sdk/C3;",
        "logoProvider",
        "<init>",
        "(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;Lio/didomi/sdk/C3;)V",
        "a",
        "Lio/didomi/sdk/H;",
        "b",
        "Lio/didomi/sdk/v3;",
        "f",
        "()Lio/didomi/sdk/v3;",
        "setLanguagesHelper",
        "(Lio/didomi/sdk/v3;)V",
        "c",
        "Lio/didomi/sdk/C3;",
        "g",
        "()Lio/didomi/sdk/C3;",
        "",
        "d",
        "Lkotlin/Lazy;",
        "()Z",
        "dcsIsEnabled",
        "",
        "()Ljava/lang/String;",
        "duration",
        "h",
        "title",
        "description",
        "Lio/didomi/sdk/a;",
        "()Lio/didomi/sdk/a;",
        "closeButtonAccessibility",
        "",
        "Lkotlin/Pair;",
        "e",
        "()Ljava/util/List;",
        "keys",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/H;

.field private b:Lio/didomi/sdk/v3;

.field private final c:Lio/didomi/sdk/C3;

.field private final d:Lkotlin/i;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;Lio/didomi/sdk/C3;)V
    .registers 5

    const-string v0, "configurationRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languagesHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logoProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/B5;->a:Lio/didomi/sdk/H;

    iput-object p2, p0, Lio/didomi/sdk/B5;->b:Lio/didomi/sdk/v3;

    iput-object p3, p0, Lio/didomi/sdk/B5;->c:Lio/didomi/sdk/C3;

    new-instance p1, Lio/didomi/sdk/B5$a;

    invoke-direct {p1, p0}, Lio/didomi/sdk/B5$a;-><init>(Lio/didomi/sdk/B5;)V

    invoke-static {p1}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/B5;->d:Lkotlin/i;

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/B5;)Lio/didomi/sdk/H;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/B5;->a:Lio/didomi/sdk/H;

    return-object p0
.end method

.method private final b()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/B5;->d:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private final d()Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lio/didomi/sdk/B5;->a:Lio/didomi/sdk/H;

    invoke-virtual {v0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/l;->a(Lio/didomi/sdk/k$a;)J

    move-result-wide v3

    sget-object v1, Lio/didomi/sdk/v0;->a:Lio/didomi/sdk/v0;

    iget-object v2, p0, Lio/didomi/sdk/B5;->b:Lio/didomi/sdk/v3;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lio/didomi/sdk/v0;->a(Lio/didomi/sdk/v0;Lio/didomi/sdk/v3;JLjava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/a;
    .registers 11

    new-instance v9, Lio/didomi/sdk/a;

    iget-object v0, p0, Lio/didomi/sdk/B5;->b:Lio/didomi/sdk/v3;

    const-string v1, "close"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/B5;->b:Lio/didomi/sdk/v3;

    const-string v3, "go_back_to_purposes_list"

    const/4 v5, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x3c

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lio/didomi/sdk/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Integer;ILkotlin/jvm/internal/n;)V

    return-object v9
.end method

.method public final c()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/B5;->b:Lio/didomi/sdk/v3;

    const-string v1, "sdk_storage_disclosure_description"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lkotlin/Pair;

    invoke-direct {p0}, Lio/didomi/sdk/B5;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IABTCF_TCString"

    invoke-direct {v1, v3, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lkotlin/Pair;

    iget-object v2, p0, Lio/didomi/sdk/B5;->a:Lio/didomi/sdk/H;

    invoke-virtual {v2}, Lio/didomi/sdk/H;->e()Lio/didomi/sdk/Regulation;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/Regulation;->getTokenKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lio/didomi/sdk/B5;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lio/didomi/sdk/B5;->b()Z

    move-result v1

    if-eqz v1, :cond_45

    new-instance v1, Lkotlin/Pair;

    iget-object v2, p0, Lio/didomi/sdk/B5;->a:Lio/didomi/sdk/H;

    invoke-virtual {v2}, Lio/didomi/sdk/H;->e()Lio/didomi/sdk/Regulation;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/Regulation;->getDcsKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lio/didomi/sdk/B5;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_45
    return-object v0
.end method

.method protected final f()Lio/didomi/sdk/v3;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/B5;->b:Lio/didomi/sdk/v3;

    return-object v0
.end method

.method public final g()Lio/didomi/sdk/C3;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/B5;->c:Lio/didomi/sdk/C3;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/B5;->b:Lio/didomi/sdk/v3;

    const-string v1, "sdk_storage_disclosure_title"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

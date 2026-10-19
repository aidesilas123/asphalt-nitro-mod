###### Class io.didomi.drawable.I (io.didomi.sdk.I)
.class public final Lio/didomi/sdk/I;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u001a\u0011\u0010\u0004\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0003\u001a\u0011\u0010\u0005\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0005\u0010\u0003\u001a\u0011\u0010\u0006\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0003\u001a\u0011\u0010\u0007\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0007\u0010\u0003\u001a\u0011\u0010\u0008\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\u0003\u001a\u0011\u0010\t\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\t\u0010\u0003\u001a\u0011\u0010\n\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\n\u0010\u0003\u001a\u0011\u0010\u000b\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u000b\u0010\u0003\u001a\u0011\u0010\u000c\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\u0003\u001a\u0011\u0010\r\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\r\u0010\u0003\u001a\u0011\u0010\u000e\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u000e\u0010\u0003\u001a\u0011\u0010\u000f\u001a\u00020\u0001*\u00020\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0003\u00a8\u0006\u0010"
    }
    d2 = {
        "Lio/didomi/sdk/H;",
        "",
        "b",
        "(Lio/didomi/sdk/H;)Z",
        "i",
        "k",
        "l",
        "j",
        "c",
        "d",
        "g",
        "f",
        "m",
        "a",
        "e",
        "h",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Lio/didomi/sdk/H;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object p0

    invoke-virtual {p0}, Lio/didomi/sdk/k;->e()Lio/didomi/sdk/k$f;

    move-result-object p0

    invoke-virtual {p0}, Lio/didomi/sdk/k$f;->a()Lio/didomi/sdk/k$f$b;

    move-result-object p0

    invoke-virtual {p0}, Lio/didomi/sdk/k$f$b;->d()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final b(Lio/didomi/sdk/H;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/H;->e()Lio/didomi/sdk/Regulation;

    move-result-object p0

    sget-object v0, Lio/didomi/sdk/Regulation;->NONE:Lio/didomi/sdk/Regulation;

    if-eq p0, v0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public static final c(Lio/didomi/sdk/H;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/didomi/sdk/I;->l(Lio/didomi/sdk/H;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final d(Lio/didomi/sdk/H;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/didomi/sdk/I;->k(Lio/didomi/sdk/H;)Z

    move-result p0

    return p0
.end method

.method public static final e(Lio/didomi/sdk/H;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object p0

    invoke-virtual {p0}, Lio/didomi/sdk/k;->e()Lio/didomi/sdk/k$f;

    move-result-object p0

    invoke-virtual {p0}, Lio/didomi/sdk/k$f;->g()Z

    move-result p0

    return p0
.end method

.method public static final f(Lio/didomi/sdk/H;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/didomi/sdk/I;->l(Lio/didomi/sdk/H;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final g(Lio/didomi/sdk/H;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/didomi/sdk/I;->l(Lio/didomi/sdk/H;)Z

    move-result p0

    return p0
.end method

.method public static final h(Lio/didomi/sdk/H;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/didomi/sdk/I;->l(Lio/didomi/sdk/H;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {p0}, Lio/didomi/sdk/I;->a(Lio/didomi/sdk/H;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-virtual {p0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object p0

    invoke-virtual {p0}, Lio/didomi/sdk/k;->f()Lio/didomi/sdk/k$g;

    move-result-object p0

    invoke-virtual {p0}, Lio/didomi/sdk/k$g;->f()Lio/didomi/sdk/S5;

    move-result-object p0

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Lio/didomi/sdk/S5;->a()Ljava/util/List;

    move-result-object p0

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    if-eqz p0, :cond_30

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2e

    goto :goto_30

    :cond_2e
    const/4 p0, 0x0

    goto :goto_31

    :cond_30
    :goto_30
    const/4 p0, 0x1

    :goto_31
    return p0
.end method

.method public static final i(Lio/didomi/sdk/H;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/H;->e()Lio/didomi/sdk/Regulation;

    move-result-object p0

    sget-object v0, Lio/didomi/sdk/Regulation;->CCPA:Lio/didomi/sdk/Regulation;

    if-ne p0, v0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public static final j(Lio/didomi/sdk/H;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->j()Lio/didomi/sdk/k$i;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$i;->d()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->j()Lio/didomi/sdk/k$i;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$i;->f()Lio/didomi/sdk/k$i$c;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$i$c;->g()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-static {p0}, Lio/didomi/sdk/I;->i(Lio/didomi/sdk/H;)Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object p0

    invoke-virtual {p0}, Lio/didomi/sdk/k;->e()Lio/didomi/sdk/k$f;

    move-result-object p0

    invoke-static {p0}, Lio/didomi/sdk/l;->d(Lio/didomi/sdk/k$f;)Lio/didomi/sdk/k$f$d;

    move-result-object p0

    sget-object v0, Lio/didomi/sdk/k$f$d;->c:Lio/didomi/sdk/k$f$d;

    if-ne p0, v0, :cond_3c

    goto :goto_3e

    :cond_3c
    const/4 p0, 0x0

    goto :goto_3f

    :cond_3e
    :goto_3e
    const/4 p0, 0x1

    :goto_3f
    return p0
.end method

.method public static final k(Lio/didomi/sdk/H;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/H;->e()Lio/didomi/sdk/Regulation;

    move-result-object p0

    sget-object v0, Lio/didomi/sdk/Regulation;->GDPR:Lio/didomi/sdk/Regulation;

    if-ne p0, v0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public static final l(Lio/didomi/sdk/H;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/H;->e()Lio/didomi/sdk/Regulation;

    move-result-object p0

    invoke-virtual {p0}, Lio/didomi/sdk/Regulation;->getMixed()Z

    move-result p0

    return p0
.end method

.method public static final m(Lio/didomi/sdk/H;)Z
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lio/didomi/sdk/I;->l(Lio/didomi/sdk/H;)Z

    move-result p0

    return p0
.end method

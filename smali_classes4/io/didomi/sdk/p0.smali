###### Class io.didomi.drawable.C1857p0 (io.didomi.sdk.p0)
.class public Lio/didomi/sdk/p0;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0007\u0008\u0017\u0018\u00002\u00020\u0001B)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\"\u0010\t\u001a\u00020\u00088\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010 \u001a\u00020\u001a8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u000c\u0010\u001fR\u0011\u0010$\u001a\u00020!8F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u0011\u0010%\u001a\u00020!8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010#R\u0011\u0010&\u001a\u00020!8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010#R\u0017\u0010)\u001a\u0008\u0012\u0004\u0012\u00020!0\'8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010(R\u0014\u0010*\u001a\u00020!8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010#R\u0011\u0010,\u001a\u00020!8F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010#R\u0011\u0010-\u001a\u00020!8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010#\u00a8\u0006."
    }
    d2 = {
        "Lio/didomi/sdk/p0;",
        "Landroidx/lifecycle/ViewModel;",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "Lio/didomi/sdk/M2;",
        "eventsRepository",
        "Lio/didomi/sdk/C3;",
        "logoProvider",
        "Lio/didomi/sdk/v3;",
        "languagesHelper",
        "<init>",
        "(Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/C3;Lio/didomi/sdk/v3;)V",
        "a",
        "Lio/didomi/sdk/H;",
        "b",
        "Lio/didomi/sdk/M2;",
        "c",
        "Lio/didomi/sdk/C3;",
        "g",
        "()Lio/didomi/sdk/C3;",
        "d",
        "Lio/didomi/sdk/v3;",
        "f",
        "()Lio/didomi/sdk/v3;",
        "setLanguagesHelper",
        "(Lio/didomi/sdk/v3;)V",
        "Lio/didomi/sdk/o0;",
        "e",
        "Lio/didomi/sdk/o0;",
        "i",
        "()Lio/didomi/sdk/o0;",
        "(Lio/didomi/sdk/o0;)V",
        "selectedItem",
        "",
        "j",
        "()Ljava/lang/String;",
        "title",
        "description",
        "descriptionLegal",
        "",
        "()Ljava/util/List;",
        "illustrations",
        "illustrationsHeaderLabel",
        "h",
        "name",
        "accessibilityCloseDescription",
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

.field private final b:Lio/didomi/sdk/M2;

.field private final c:Lio/didomi/sdk/C3;

.field private d:Lio/didomi/sdk/v3;

.field public e:Lio/didomi/sdk/o0;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/H;Lio/didomi/sdk/M2;Lio/didomi/sdk/C3;Lio/didomi/sdk/v3;)V
    .registers 6

    const-string v0, "configurationRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logoProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languagesHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/p0;->a:Lio/didomi/sdk/H;

    iput-object p2, p0, Lio/didomi/sdk/p0;->b:Lio/didomi/sdk/M2;

    iput-object p3, p0, Lio/didomi/sdk/p0;->c:Lio/didomi/sdk/C3;

    iput-object p4, p0, Lio/didomi/sdk/p0;->d:Lio/didomi/sdk/v3;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/p0;->d:Lio/didomi/sdk/v3;

    const-string v1, "close"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/didomi/sdk/o0;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/p0;->e:Lio/didomi/sdk/o0;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/p0;->i()Lio/didomi/sdk/o0;

    move-result-object v0

    invoke-interface {v0}, Lio/didomi/sdk/o0;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/p0;->i()Lio/didomi/sdk/o0;

    move-result-object v0

    invoke-interface {v0}, Lio/didomi/sdk/o0;->getDescriptionLegal()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/V5;->l(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/p0;->i()Lio/didomi/sdk/o0;

    move-result-object v0

    invoke-interface {v0}, Lio/didomi/sdk/o0;->getIllustrations()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_31

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/g;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_31
    const/4 v1, 0x0

    :cond_32
    if-nez v1, :cond_38

    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_38
    return-object v1
.end method

.method public e()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/p0;->d:Lio/didomi/sdk/v3;

    const-string v1, "purpose_illustration_explanation"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final f()Lio/didomi/sdk/v3;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/p0;->d:Lio/didomi/sdk/v3;

    return-object v0
.end method

.method public final g()Lio/didomi/sdk/C3;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/p0;->c:Lio/didomi/sdk/C3;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/p0;->i()Lio/didomi/sdk/o0;

    move-result-object v0

    invoke-interface {v0}, Lio/didomi/sdk/o0;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/g;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lio/didomi/sdk/o0;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/p0;->e:Lio/didomi/sdk/o0;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "selectedItem"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .registers 4

    sget-object v0, Lio/didomi/sdk/f4;->a:Lio/didomi/sdk/f4;

    iget-object v1, p0, Lio/didomi/sdk/p0;->a:Lio/didomi/sdk/H;

    iget-object v2, p0, Lio/didomi/sdk/p0;->d:Lio/didomi/sdk/v3;

    invoke-virtual {v0, v1, v2}, Lio/didomi/sdk/f4;->a(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

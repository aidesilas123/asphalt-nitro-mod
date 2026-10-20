###### Class io.didomi.drawable.C0 (io.didomi.sdk.C0)
.class public Lio/didomi/sdk/C0;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008*\u0008\u0017\u0018\u00002\u00020\u0001B)\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001d\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0011\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0014\u001a\u00020\u0013\u00a2\u0006\u0004\u0008\u0011\u0010\u0016J\u0019\u0010\u0011\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0017\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0018J\u0017\u0010\u0019\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0017\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u0017\u0010\u001a\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0017\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001a\u0010\u0018J\u0017\u0010\u001b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0017\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001b\u0010\u0018J\u0017\u0010\u001c\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0017\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001c\u0010\u0018J\u0017\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u0017\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0018J\u0013\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001e\u00a2\u0006\u0004\u0008\u001c\u0010 J\r\u0010!\u001a\u00020\u0010\u00a2\u0006\u0004\u0008!\u0010\"J\r\u0010#\u001a\u00020\u0010\u00a2\u0006\u0004\u0008#\u0010\"J\r\u0010\u0011\u001a\u00020$\u00a2\u0006\u0004\u0008\u0011\u0010%J\u001d\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020&0\u001e2\u0006\u0010\u0017\u001a\u00020\u0015H\u0004\u00a2\u0006\u0004\u0008\'\u0010(R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010)R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010*R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010+R\u0017\u0010\t\u001a\u00020\u00088\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010,\u001a\u0004\u0008-\u0010.R(\u00103\u001a\u0004\u0018\u00010\u00152\u0008\u0010/\u001a\u0004\u0018\u00010\u00158\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\'\u00100\u001a\u0004\u00081\u00102R*\u00109\u001a\u00020\u00132\u0006\u00104\u001a\u00020\u00138\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u00105\u001a\u0004\u00086\u00107\"\u0004\u0008\u001b\u00108R$\u0010\r\u001a\u00020\u000c2\u0006\u0010/\u001a\u00020\u000c8\u0006@BX\u0086.\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010:\u001a\u0004\u0008;\u0010<R\"\u0010\u000f\u001a\u00020\u000e8\u0004@\u0004X\u0084.\u00a2\u0006\u0012\n\u0004\u0008-\u0010=\u001a\u0004\u0008\'\u0010>\"\u0004\u0008\u0011\u0010?R\u0011\u0010A\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008@\u0010<R\u0011\u0010B\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010<R\u0011\u0010D\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008C\u0010<R\u0011\u0010F\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008E\u0010<R\u0011\u0010G\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010<R\u0011\u0010H\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010<R\u0011\u0010J\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008I\u0010<R\u0011\u0010L\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008K\u0010<R\u0011\u0010N\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008M\u0010<R\u0011\u0010O\u001a\u00020\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010<\u00a8\u0006P"
    }
    d2 = {
        "Lio/didomi/sdk/C0;",
        "Landroidx/lifecycle/ViewModel;",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "Lio/didomi/sdk/v3;",
        "languagesHelper",
        "Lio/didomi/sdk/V8;",
        "vendorRepository",
        "Lio/didomi/sdk/C3;",
        "logoProvider",
        "<init>",
        "(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;)V",
        "",
        "vendorName",
        "Lio/didomi/sdk/models/DeviceStorageDisclosures;",
        "disclosures",
        "",
        "a",
        "(Ljava/lang/String;Lio/didomi/sdk/models/DeviceStorageDisclosures;)V",
        "",
        "position",
        "Lio/didomi/sdk/models/DeviceStorageDisclosure;",
        "(I)Lio/didomi/sdk/models/DeviceStorageDisclosure;",
        "disclosure",
        "(Lio/didomi/sdk/models/DeviceStorageDisclosure;)Ljava/lang/String;",
        "d",
        "g",
        "b",
        "c",
        "f",
        "",
        "Lio/didomi/sdk/y0;",
        "()Ljava/util/List;",
        "s",
        "()V",
        "r",
        "",
        "()Z",
        "Lio/didomi/sdk/models/InternalPurpose;",
        "e",
        "(Lio/didomi/sdk/models/DeviceStorageDisclosure;)Ljava/util/List;",
        "Lio/didomi/sdk/H;",
        "Lio/didomi/sdk/v3;",
        "Lio/didomi/sdk/V8;",
        "Lio/didomi/sdk/C3;",
        "h",
        "()Lio/didomi/sdk/C3;",
        "<set-?>",
        "Lio/didomi/sdk/models/DeviceStorageDisclosure;",
        "m",
        "()Lio/didomi/sdk/models/DeviceStorageDisclosure;",
        "selectedDisclosure",
        "value",
        "I",
        "n",
        "()I",
        "(I)V",
        "selectedIndex",
        "Ljava/lang/String;",
        "q",
        "()Ljava/lang/String;",
        "Lio/didomi/sdk/models/DeviceStorageDisclosures;",
        "()Lio/didomi/sdk/models/DeviceStorageDisclosures;",
        "(Lio/didomi/sdk/models/DeviceStorageDisclosures;)V",
        "o",
        "title",
        "disclosureDetailsTitle",
        "i",
        "nameSectionTitle",
        "p",
        "typeSectionTitle",
        "domainSectionTitle",
        "expirationSectionTitle",
        "l",
        "purposesSectionTitle",
        "k",
        "previousButtonLabel",
        "j",
        "nextButtonLabel",
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

.field private final b:Lio/didomi/sdk/v3;

.field private final c:Lio/didomi/sdk/V8;

.field private final d:Lio/didomi/sdk/C3;

.field private e:Lio/didomi/sdk/models/DeviceStorageDisclosure;

.field private f:I

.field private g:Ljava/lang/String;

.field protected h:Lio/didomi/sdk/models/DeviceStorageDisclosures;


# direct methods
.method public constructor <init>(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;Lio/didomi/sdk/V8;Lio/didomi/sdk/C3;)V
    .registers 6

    const-string v0, "configurationRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languagesHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendorRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logoProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/C0;->a:Lio/didomi/sdk/H;

    iput-object p2, p0, Lio/didomi/sdk/C0;->b:Lio/didomi/sdk/v3;

    iput-object p3, p0, Lio/didomi/sdk/C0;->c:Lio/didomi/sdk/V8;

    iput-object p4, p0, Lio/didomi/sdk/C0;->d:Lio/didomi/sdk/C3;

    return-void
.end method


# virtual methods
.method public final a(I)Lio/didomi/sdk/models/DeviceStorageDisclosure;
    .registers 3

    invoke-virtual {p0}, Lio/didomi/sdk/C0;->e()Lio/didomi/sdk/models/DeviceStorageDisclosures;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/models/DeviceStorageDisclosures;->getDisclosuresList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {v0, p1}, Lkotlin/collections/p;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/models/DeviceStorageDisclosure;

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return-object p1
.end method

.method public a(Lio/didomi/sdk/models/DeviceStorageDisclosure;)Ljava/lang/String;
    .registers 12

    const-string v0, "disclosure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lio/didomi/sdk/models/DeviceStorageDisclosure;->getDomain()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_19

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    invoke-virtual {p1}, Lio/didomi/sdk/models/DeviceStorageDisclosure;->getMaxAgeSeconds()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    if-eqz p1, :cond_41

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    sget-object v2, Lio/didomi/sdk/v0;->a:Lio/didomi/sdk/v0;

    iget-object v3, p0, Lio/didomi/sdk/C0;->b:Lio/didomi/sdk/v3;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lio/didomi/sdk/v0;->a(Lio/didomi/sdk/v0;Lio/didomi/sdk/v3;JLjava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f

    const/4 v9, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/collections/p;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lio/didomi/sdk/models/DeviceStorageDisclosures;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/C0;->h:Lio/didomi/sdk/models/DeviceStorageDisclosures;

    return-void
.end method

.method public final a(Ljava/lang/String;Lio/didomi/sdk/models/DeviceStorageDisclosures;)V
    .registers 4

    const-string v0, "vendorName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disclosures"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/didomi/sdk/C0;->g:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lio/didomi/sdk/C0;->a(Lio/didomi/sdk/models/DeviceStorageDisclosures;)V

    return-void
.end method

.method public final a()Z
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/C0;->e:Lio/didomi/sdk/models/DeviceStorageDisclosure;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lio/didomi/sdk/C0;->b:Lio/didomi/sdk/v3;

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

.method public final b(Lio/didomi/sdk/models/DeviceStorageDisclosure;)Ljava/lang/String;
    .registers 3

    const-string v0, "disclosure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/DeviceStorageDisclosure;->getDomain()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(I)V
    .registers 3

    invoke-virtual {p0, p1}, Lio/didomi/sdk/C0;->a(I)Lio/didomi/sdk/models/DeviceStorageDisclosure;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/C0;->e:Lio/didomi/sdk/models/DeviceStorageDisclosure;

    iput p1, p0, Lio/didomi/sdk/C0;->f:I

    return-void
.end method

.method public final c(Lio/didomi/sdk/models/DeviceStorageDisclosure;)Ljava/lang/String;
    .registers 8

    const-string v0, "disclosure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/DeviceStorageDisclosure;->getMaxAgeSeconds()Ljava/lang/Long;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_17

    goto :goto_18

    :cond_17
    move-object p1, v0

    :goto_18
    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object p1, Lio/didomi/sdk/v0;->a:Lio/didomi/sdk/v0;

    iget-object v2, p0, Lio/didomi/sdk/C0;->b:Lio/didomi/sdk/v3;

    invoke-virtual {p1, v2, v0, v1}, Lio/didomi/sdk/v0;->b(Lio/didomi/sdk/v3;J)Ljava/lang/String;

    move-result-object p1

    const-string v0, "{humanizedStorageDuration}"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/d0;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    iget-object v0, p0, Lio/didomi/sdk/C0;->b:Lio/didomi/sdk/v3;

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v1, "period_after_data_is_stored"

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3c
    return-object v0
.end method

.method public final c()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/didomi/sdk/y0;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lio/didomi/sdk/C0;->e()Lio/didomi/sdk/models/DeviceStorageDisclosures;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/models/DeviceStorageDisclosures;->getDisclosuresList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_44

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

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/didomi/sdk/models/DeviceStorageDisclosure;

    new-instance v3, Lio/didomi/sdk/y0;

    invoke-virtual {v2}, Lio/didomi/sdk/models/DeviceStorageDisclosure;->hashCode()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2}, Lio/didomi/sdk/models/DeviceStorageDisclosure;->getIdentifier()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    if-nez v6, :cond_35

    move-object v6, v7

    :cond_35
    invoke-virtual {p0, v2}, Lio/didomi/sdk/C0;->a(Lio/didomi/sdk/models/DeviceStorageDisclosure;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3c

    goto :goto_3d

    :cond_3c
    move-object v7, v2

    :goto_3d
    invoke-direct {v3, v4, v5, v6, v7}, Lio/didomi/sdk/y0;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_44
    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_48
    return-object v1
.end method

.method public final d()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/C0;->b:Lio/didomi/sdk/v3;

    invoke-virtual {p0}, Lio/didomi/sdk/C0;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{vendorName}"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/d0;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    const-string v1, "vendors_data_storage"

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d(Lio/didomi/sdk/models/DeviceStorageDisclosure;)Ljava/lang/String;
    .registers 3

    const-string v0, "disclosure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/DeviceStorageDisclosure;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final e()Lio/didomi/sdk/models/DeviceStorageDisclosures;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/C0;->h:Lio/didomi/sdk/models/DeviceStorageDisclosures;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "disclosures"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final e(Lio/didomi/sdk/models/DeviceStorageDisclosure;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/models/DeviceStorageDisclosure;",
            ")",
            "Ljava/util/List<",
            "Lio/didomi/sdk/models/InternalPurpose;",
            ">;"
        }
    .end annotation

    const-string v0, "disclosure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/DeviceStorageDisclosure;->getPurposes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2c

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lio/didomi/sdk/C0;->c:Lio/didomi/sdk/V8;

    invoke-virtual {v3, v2}, Lio/didomi/sdk/V8;->d(Ljava/lang/String;)Lio/didomi/sdk/models/InternalPurpose;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_2c
    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object v1

    :cond_30
    invoke-virtual {p1}, Lio/didomi/sdk/models/DeviceStorageDisclosure;->getDidomiPurposes()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_43

    iget-object v0, p0, Lio/didomi/sdk/C0;->c:Lio/didomi/sdk/V8;

    invoke-static {p1}, Lkotlin/collections/p;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/didomi/sdk/V8;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_43

    goto :goto_47

    :cond_43
    invoke-static {}, Lkotlin/collections/p;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_47
    invoke-static {v1, p1}, Lkotlin/collections/p;->plus(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final f()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/C0;->b:Lio/didomi/sdk/v3;

    const-string v1, "domain"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f(Lio/didomi/sdk/models/DeviceStorageDisclosure;)Ljava/lang/String;
    .registers 3

    const-string v0, "disclosure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/didomi/sdk/C0;->e(Lio/didomi/sdk/models/DeviceStorageDisclosure;)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lio/didomi/sdk/r3;->a:Lio/didomi/sdk/r3;

    invoke-virtual {v0, p1}, Lio/didomi/sdk/r3;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final g()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/C0;->b:Lio/didomi/sdk/v3;

    const-string v1, "expiration"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g(Lio/didomi/sdk/models/DeviceStorageDisclosure;)Ljava/lang/String;
    .registers 9

    const-string v0, "disclosure"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/DeviceStorageDisclosure;->getType()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x50bff59c

    if-eq v1, v2, :cond_38

    const v2, 0x17a21

    if-eq v1, v2, :cond_2c

    const v2, 0x1cb54

    if-eq v1, v2, :cond_20

    goto :goto_45

    :cond_20
    const-string v1, "web"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_29

    goto :goto_45

    :cond_29
    const-string p1, "web_storage"

    goto :goto_43

    :cond_2c
    const-string v1, "app"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto :goto_45

    :cond_35
    const-string p1, "app_storage"

    goto :goto_43

    :cond_38
    const-string v1, "cookie"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    goto :goto_45

    :cond_41
    const-string p1, "cookie_storage"

    :goto_43
    move-object v2, p1

    goto :goto_46

    :cond_45
    :goto_45
    move-object v2, v0

    :goto_46
    if-nez v2, :cond_49

    return-object v0

    :cond_49
    iget-object v1, p0, Lio/didomi/sdk/C0;->b:Lio/didomi/sdk/v3;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final h()Lio/didomi/sdk/C3;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/C0;->d:Lio/didomi/sdk/C3;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/C0;->b:Lio/didomi/sdk/v3;

    const-string v1, "name"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/C0;->b:Lio/didomi/sdk/v3;

    const-string v1, "next_storage"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/C0;->b:Lio/didomi/sdk/v3;

    const-string v1, "previous_storage"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/C0;->b:Lio/didomi/sdk/v3;

    const-string v1, "used_for_purposes"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m()Lio/didomi/sdk/models/DeviceStorageDisclosure;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/C0;->e:Lio/didomi/sdk/models/DeviceStorageDisclosure;

    return-object v0
.end method

.method public final n()I
    .registers 2

    iget v0, p0, Lio/didomi/sdk/C0;->f:I

    return v0
.end method

.method public final o()Ljava/lang/String;
    .registers 4

    sget-object v0, Lio/didomi/sdk/f4;->a:Lio/didomi/sdk/f4;

    iget-object v1, p0, Lio/didomi/sdk/C0;->a:Lio/didomi/sdk/H;

    iget-object v2, p0, Lio/didomi/sdk/C0;->b:Lio/didomi/sdk/v3;

    invoke-virtual {v0, v1, v2}, Lio/didomi/sdk/f4;->a(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lio/didomi/sdk/C0;->b:Lio/didomi/sdk/v3;

    const-string v1, "type"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/C0;->g:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "vendorName"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final r()V
    .registers 2

    iget v0, p0, Lio/didomi/sdk/C0;->f:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lio/didomi/sdk/C0;->b(I)V

    return-void
.end method

.method public final s()V
    .registers 2

    iget v0, p0, Lio/didomi/sdk/C0;->f:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lio/didomi/sdk/C0;->b(I)V

    return-void
.end method

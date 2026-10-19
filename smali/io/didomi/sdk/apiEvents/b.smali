###### Class io.didomi.drawable.apiEvents.b (io.didomi.sdk.apiEvents.b)
.class public final Lio/didomi/sdk/apiEvents/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/didomi/sdk/a3;
.implements Lio/didomi/sdk/K;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\"\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u00012\u00020\u0002BE\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J#\u0010\u0017\u001a\u00020\u00162\u0012\u0010\u0015\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00140\u0013\"\u00020\u0014H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001bJ\u000f\u0010\u001d\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u001bJ\r\u0010\u001e\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001e\u0010\u001bJ\r\u0010\u001f\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001f\u0010\u001bJ\u00f7\u0001\u0010\u0017\u001a\u00020\u00192\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\r0 2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\r0 2\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u00020\r0 2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\r0 2\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\r0 2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\r0 2\u000c\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\r0 2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\r0 2\u000c\u0010)\u001a\u0008\u0012\u0004\u0012\u00020\r0 2\u000c\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\r0 2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\r0 2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\r0 2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\r0 2\u000c\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\r0 2\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020\r0 2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020\r0 2\u0008\u00101\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\u0017\u00102J\r\u00103\u001a\u00020\u0016\u00a2\u0006\u0004\u00083\u00104J\r\u00105\u001a\u00020\u0019\u00a2\u0006\u0004\u00085\u0010\u001bJ\r\u00106\u001a\u00020\u0019\u00a2\u0006\u0004\u00086\u0010\u001bJ\r\u00107\u001a\u00020\u0019\u00a2\u0006\u0004\u00087\u0010\u001bJ\r\u00108\u001a\u00020\u0019\u00a2\u0006\u0004\u00088\u0010\u001bJ\r\u00109\u001a\u00020\u0019\u00a2\u0006\u0004\u00089\u0010\u001bJ\r\u0010:\u001a\u00020\u0019\u00a2\u0006\u0004\u0008:\u0010\u001bJ\'\u0010\u001d\u001a\u00020\u00192\u0016\u0010\u0015\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00140\u0013\"\u0004\u0018\u00010\u0014H\u0000\u00a2\u0006\u0004\u0008\u001d\u0010;J\u0017\u0010\u001d\u001a\u00020\u00192\u0006\u0010=\u001a\u00020<H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010>J\u0019\u0010\u0017\u001a\u00020\u00192\u0008\u0010=\u001a\u0004\u0018\u00010<H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010>J\u000f\u0010\u0017\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u001bR\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010?R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010@R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010AR\u0014\u0010\n\u001a\u00020\t8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010BR\u001a\u0010\u000c\u001a\u00020\u000b8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010C\u001a\u0004\u0008D\u0010ER\u001a\u0010\u000e\u001a\u00020\r8\u0000X\u0080\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010F\u001a\u0004\u0008G\u0010HR\u0014\u0010\u0010\u001a\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00083\u0010IR\'\u0010O\u001a\u0012\u0012\u0004\u0012\u00020\u00140Jj\u0008\u0012\u0004\u0012\u00020\u0014`K8\u0006\u00a2\u0006\u000c\n\u0004\u00088\u0010L\u001a\u0004\u0008M\u0010NR$\u0010P\u001a\u0012\u0012\u0004\u0012\u00020\u00140Jj\u0008\u0012\u0004\u0012\u00020\u0014`K8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010LR\u0016\u0010R\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00085\u0010QR\u0014\u0010U\u001a\u00020S8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u0010TR\u001d\u0010[\u001a\u0008\u0012\u0004\u0012\u00020W0V8\u0006\u00a2\u0006\u000c\n\u0004\u00087\u0010X\u001a\u0004\u0008Y\u0010Z\u00a8\u0006\\"
    }
    d2 = {
        "Lio/didomi/sdk/apiEvents/b;",
        "Lio/didomi/sdk/a3;",
        "Lio/didomi/sdk/K;",
        "Lio/didomi/sdk/apiEvents/a;",
        "apiEventsFactory",
        "Lio/didomi/sdk/J;",
        "connectivityHelper",
        "Lio/didomi/sdk/Z;",
        "contextHelper",
        "Lio/didomi/sdk/Z2;",
        "httpRequestHelper",
        "Lio/didomi/sdk/r5;",
        "requiredIds",
        "",
        "noticePosition",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "coroutineDispatcher",
        "<init>",
        "(Lio/didomi/sdk/apiEvents/a;Lio/didomi/sdk/J;Lio/didomi/sdk/Z;Lio/didomi/sdk/Z2;Lio/didomi/sdk/r5;Ljava/lang/String;Lkotlinx/coroutines/CoroutineDispatcher;)V",
        "",
        "Lio/didomi/sdk/e;",
        "apiEvents",
        "",
        "a",
        "([Lio/didomi/sdk/e;)Z",
        "",
        "d",
        "()V",
        "c",
        "b",
        "f",
        "e",
        "",
        "enabledPurposeIds",
        "disabledPurposeIds",
        "enabledLegitimatePurposeIds",
        "disabledLegitimatePurposeIds",
        "enabledVendorIds",
        "disabledVendorIds",
        "enabledLegIntVendorIds",
        "disabledLegIntVendorIds",
        "previousEnabledPurposeIds",
        "previousDisabledPurposeIds",
        "previousEnabledLegitimatePurposeIds",
        "previousDisabledLegitimatePurposeIds",
        "previousEnabledVendorIds",
        "previousDisabledVendorIds",
        "previousEnabledLegIntVendorIds",
        "previousDisabledLegIntVendorIds",
        "action",
        "(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V",
        "g",
        "()Z",
        "j",
        "k",
        "l",
        "h",
        "m",
        "i",
        "([Lio/didomi/sdk/e;)V",
        "Lorg/json/JSONObject;",
        "jsonObject",
        "(Lorg/json/JSONObject;)V",
        "Lio/didomi/sdk/apiEvents/a;",
        "Lio/didomi/sdk/J;",
        "Lio/didomi/sdk/Z;",
        "Lio/didomi/sdk/Z2;",
        "Lio/didomi/sdk/r5;",
        "getRequiredIds$android_release",
        "()Lio/didomi/sdk/r5;",
        "Ljava/lang/String;",
        "getNoticePosition$android_release",
        "()Ljava/lang/String;",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "Ljava/util/ArrayList;",
        "getEventsArray",
        "()Ljava/util/ArrayList;",
        "eventsArray",
        "queuedEvents",
        "Z",
        "isSending",
        "Lcom/google/gson/Gson;",
        "Lcom/google/gson/Gson;",
        "gson",
        "",
        "Lio/didomi/sdk/apiEvents/ApiEventType;",
        "Ljava/util/Set;",
        "getTriggeredEvents",
        "()Ljava/util/Set;",
        "triggeredEvents",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lio/didomi/sdk/apiEvents/a;

.field private final b:Lio/didomi/sdk/J;

.field private final c:Lio/didomi/sdk/Z;

.field private final d:Lio/didomi/sdk/Z2;

.field private final e:Lio/didomi/sdk/r5;

.field private final f:Ljava/lang/String;

.field private final g:Lkotlinx/coroutines/r;

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/didomi/sdk/e;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/didomi/sdk/e;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private final k:Lcom/google/gson/Gson;

.field private final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/didomi/sdk/apiEvents/ApiEventType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/didomi/sdk/apiEvents/a;Lio/didomi/sdk/J;Lio/didomi/sdk/Z;Lio/didomi/sdk/Z2;Lio/didomi/sdk/r5;Ljava/lang/String;Lkotlinx/coroutines/r;)V
    .registers 9

    const-string v0, "apiEventsFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivityHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpRequestHelper"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requiredIds"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "noticePosition"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineDispatcher"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/apiEvents/b;->a:Lio/didomi/sdk/apiEvents/a;

    iput-object p2, p0, Lio/didomi/sdk/apiEvents/b;->b:Lio/didomi/sdk/J;

    iput-object p3, p0, Lio/didomi/sdk/apiEvents/b;->c:Lio/didomi/sdk/Z;

    iput-object p4, p0, Lio/didomi/sdk/apiEvents/b;->d:Lio/didomi/sdk/Z2;

    iput-object p5, p0, Lio/didomi/sdk/apiEvents/b;->e:Lio/didomi/sdk/r5;

    iput-object p6, p0, Lio/didomi/sdk/apiEvents/b;->f:Ljava/lang/String;

    iput-object p7, p0, Lio/didomi/sdk/apiEvents/b;->g:Lkotlinx/coroutines/r;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/apiEvents/b;->h:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/apiEvents/b;->i:Ljava/util/ArrayList;

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/apiEvents/b;->k:Lcom/google/gson/Gson;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/apiEvents/b;->l:Ljava/util/Set;

    return-void
.end method

.method public static final synthetic a(Lio/didomi/sdk/apiEvents/b;)Lio/didomi/sdk/Z;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/apiEvents/b;->c:Lio/didomi/sdk/Z;

    return-object p0
.end method

.method private final varargs declared-synchronized a([Lio/didomi/sdk/e;)Z
    .registers 9

    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_9
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1b

    aget-object v5, p1, v3

    invoke-static {v5}, Lio/didomi/sdk/f;->a(Lio/didomi/sdk/e;)Z

    move-result v6

    xor-int/2addr v4, v6

    if-eqz v4, :cond_18

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1b
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_59

    if-eqz p1, :cond_23

    monitor-exit p0

    return v2

    :cond_23
    :try_start_23
    iget-boolean p1, p0, Lio/didomi/sdk/apiEvents/b;->j:Z

    if-eqz p1, :cond_2e

    iget-object p1, p0, Lio/didomi/sdk/apiEvents/b;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_59

    monitor-exit p0

    return v2

    :cond_2e
    :try_start_2e
    iget-object p1, p0, Lio/didomi/sdk/apiEvents/b;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lio/didomi/sdk/apiEvents/b;->b:Lio/didomi/sdk/J;

    invoke-virtual {p1}, Lio/didomi/sdk/J;->c()Z

    move-result p1

    if-nez p1, :cond_41

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lio/didomi/sdk/apiEvents/b;->a(Lorg/json/JSONObject;)V
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_59

    monitor-exit p0

    return v2

    :cond_41
    :try_start_41
    iput-boolean v4, p0, Lio/didomi/sdk/apiEvents/b;->j:Z

    iget-object p1, p0, Lio/didomi/sdk/apiEvents/b;->h:Ljava/util/ArrayList;

    new-array v0, v2, [Lio/didomi/sdk/e;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/didomi/sdk/e;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lio/didomi/sdk/e;

    invoke-virtual {p0, p1}, Lio/didomi/sdk/apiEvents/b;->b([Lio/didomi/sdk/e;)V
    :try_end_57
    .catchall {:try_start_41 .. :try_end_57} :catchall_59

    monitor-exit p0

    return v4

    :catchall_59
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static final synthetic b(Lio/didomi/sdk/apiEvents/b;)Lio/didomi/sdk/Z2;
    .registers 1

    iget-object p0, p0, Lio/didomi/sdk/apiEvents/b;->d:Lio/didomi/sdk/Z2;

    return-object p0
.end method

.method private final b()V
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->i:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_16

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->h:Ljava/util/ArrayList;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_16
    return-void
.end method

.method private final c()V
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->h:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_f

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_f
    return-void
.end method

.method private final d()V
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->h:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/p;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_23

    iput-boolean v2, p0, Lio/didomi/sdk/apiEvents/b;->j:Z

    const/4 v1, 0x0

    new-array v1, v1, [Lio/didomi/sdk/e;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/didomi/sdk/e;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/didomi/sdk/e;

    invoke-virtual {p0, v0}, Lio/didomi/sdk/apiEvents/b;->b([Lio/didomi/sdk/e;)V

    :cond_23
    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lio/didomi/sdk/apiEvents/b;->j:Z

    if-nez v0, :cond_b

    invoke-direct {p0}, Lio/didomi/sdk/apiEvents/b;->b()V

    invoke-direct {p0}, Lio/didomi/sdk/apiEvents/b;->d()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v0, p16

    const-string v0, "enabledPurposeIds"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disabledPurposeIds"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enabledLegitimatePurposeIds"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disabledLegitimatePurposeIds"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enabledVendorIds"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disabledVendorIds"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enabledLegIntVendorIds"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disabledLegIntVendorIds"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousEnabledPurposeIds"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousDisabledPurposeIds"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousEnabledLegitimatePurposeIds"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousDisabledLegitimatePurposeIds"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousEnabledVendorIds"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousDisabledVendorIds"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousEnabledLegIntVendorIds"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previousDisabledLegIntVendorIds"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;

    new-instance v15, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-direct {v15, v2, v1}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    new-instance v1, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-direct {v1, v4, v3}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    new-instance v2, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-direct {v2, v10, v9}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    new-instance v3, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-direct {v3, v12, v11}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    new-instance v4, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-direct {v4, v6, v5}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    new-instance v5, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-direct {v5, v8, v7}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    new-instance v6, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    invoke-direct {v6, v14, v13}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    new-instance v7, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;

    move-object/from16 v8, p15

    move-object/from16 v9, p16

    invoke-direct {v7, v9, v8}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V

    move-object/from16 p1, v0

    move-object/from16 p2, v15

    move-object/from16 p3, v1

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, p17

    invoke-direct/range {p1 .. p10}, Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;-><init>(Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters$ConsentStatus;Ljava/lang/String;)V

    move-object/from16 v1, p0

    iget-object v2, v1, Lio/didomi/sdk/apiEvents/b;->a:Lio/didomi/sdk/apiEvents/a;

    invoke-virtual {v2, v0}, Lio/didomi/sdk/apiEvents/a;->a(Lio/didomi/sdk/apiEvents/ConsentGivenApiEventParameters;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Lio/didomi/sdk/e;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/didomi/sdk/e;

    array-length v2, v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/didomi/sdk/e;

    invoke-direct {v1, v0}, Lio/didomi/sdk/apiEvents/b;->a([Lio/didomi/sdk/e;)Z

    return-void
.end method

.method public declared-synchronized a(Lorg/json/JSONObject;)V
    .registers 4

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_2
    iput-boolean p1, p0, Lio/didomi/sdk/apiEvents/b;->j:Z

    const-string p1, "API events queued because previous sending failed"

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lio/didomi/sdk/Log;->i$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0}, Lio/didomi/sdk/apiEvents/b;->b()V
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b(Lorg/json/JSONObject;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/didomi/sdk/apiEvents/b;->j:Z

    const-string p1, "API events sent"

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Lio/didomi/sdk/Log;->i$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    invoke-direct {p0}, Lio/didomi/sdk/apiEvents/b;->c()V

    invoke-direct {p0}, Lio/didomi/sdk/apiEvents/b;->b()V

    invoke-direct {p0}, Lio/didomi/sdk/apiEvents/b;->d()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final varargs b([Lio/didomi/sdk/e;)V
    .registers 9

    const-string v0, "apiEvents"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->k:Lcom/google/gson/Gson;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    :cond_13
    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->k:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_19
    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->g:Lkotlinx/coroutines/r;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s;

    move-result-object v1

    new-instance v4, Lio/didomi/sdk/apiEvents/b$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lio/didomi/sdk/apiEvents/b$a;-><init>(Lio/didomi/sdk/apiEvents/b;Ljava/lang/String;Lkotlin/coroutines/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/s;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final e()V
    .registers 10

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->l:Ljava/util/Set;

    sget-object v8, Lio/didomi/sdk/apiEvents/ApiEventType;->CONSENT_ASKED:Lio/didomi/sdk/apiEvents/ApiEventType;

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    new-instance v0, Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/b;->e:Lio/didomi/sdk/r5;

    invoke-virtual {v1}, Lio/didomi/sdk/r5;->a()Ljava/util/Set;

    move-result-object v2

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/b;->e:Lio/didomi/sdk/r5;

    invoke-virtual {v1}, Lio/didomi/sdk/r5;->c()Ljava/util/Set;

    move-result-object v3

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/b;->e:Lio/didomi/sdk/r5;

    invoke-virtual {v1}, Lio/didomi/sdk/r5;->b()Ljava/util/Set;

    move-result-object v4

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/b;->e:Lio/didomi/sdk/r5;

    invoke-virtual {v1}, Lio/didomi/sdk/r5;->d()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lio/didomi/sdk/apiEvents/b;->f:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lio/didomi/sdk/apiEvents/ConsentAskedApiEventParameters;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/b;->a:Lio/didomi/sdk/apiEvents/a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v2, v8

    move-object v3, v0

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/apiEvents/a;->a(Lio/didomi/sdk/apiEvents/a;Lio/didomi/sdk/apiEvents/ApiEventType;Lio/didomi/sdk/i;Lio/didomi/sdk/user/UserAuth;ZILjava/lang/Object;)Lio/didomi/sdk/e;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lio/didomi/sdk/e;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lio/didomi/sdk/apiEvents/b;->a([Lio/didomi/sdk/e;)Z

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->l:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_45
    return-void
.end method

.method public final f()V
    .registers 10

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->l:Ljava/util/Set;

    sget-object v8, Lio/didomi/sdk/apiEvents/ApiEventType;->PAGE_VIEW:Lio/didomi/sdk/apiEvents/ApiEventType;

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/b;->a:Lio/didomi/sdk/apiEvents/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v2, v8

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/apiEvents/a;->a(Lio/didomi/sdk/apiEvents/a;Lio/didomi/sdk/apiEvents/ApiEventType;Lio/didomi/sdk/i;Lio/didomi/sdk/user/UserAuth;ZILjava/lang/Object;)Lio/didomi/sdk/e;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lio/didomi/sdk/e;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lio/didomi/sdk/apiEvents/b;->a([Lio/didomi/sdk/e;)Z

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->l:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_25
    return-void
.end method

.method public final g()Z
    .registers 11

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->l:Ljava/util/Set;

    sget-object v8, Lio/didomi/sdk/apiEvents/ApiEventType;->SYNC_ACKNOWLEDGED:Lio/didomi/sdk/apiEvents/ApiEventType;

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_27

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/b;->a:Lio/didomi/sdk/apiEvents/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v2, v8

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/apiEvents/a;->a(Lio/didomi/sdk/apiEvents/a;Lio/didomi/sdk/apiEvents/ApiEventType;Lio/didomi/sdk/i;Lio/didomi/sdk/user/UserAuth;ZILjava/lang/Object;)Lio/didomi/sdk/e;

    move-result-object v0

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/b;->l:Ljava/util/Set;

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    new-array v1, v1, [Lio/didomi/sdk/e;

    aput-object v0, v1, v9

    invoke-direct {p0, v1}, Lio/didomi/sdk/apiEvents/b;->a([Lio/didomi/sdk/e;)Z

    move-result v0

    return v0

    :cond_27
    return v9
.end method

.method public final h()V
    .registers 10

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->l:Ljava/util/Set;

    sget-object v8, Lio/didomi/sdk/apiEvents/ApiEventType;->UI_ACTION_PURPOSE_CHANGED:Lio/didomi/sdk/apiEvents/ApiEventType;

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/b;->a:Lio/didomi/sdk/apiEvents/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v2, v8

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/apiEvents/a;->a(Lio/didomi/sdk/apiEvents/a;Lio/didomi/sdk/apiEvents/ApiEventType;Lio/didomi/sdk/i;Lio/didomi/sdk/user/UserAuth;ZILjava/lang/Object;)Lio/didomi/sdk/e;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lio/didomi/sdk/e;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lio/didomi/sdk/apiEvents/b;->a([Lio/didomi/sdk/e;)Z

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->l:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_25
    return-void
.end method

.method public final i()V
    .registers 10

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->l:Ljava/util/Set;

    sget-object v8, Lio/didomi/sdk/apiEvents/ApiEventType;->UI_ACTION_SENSITIVE_PERSONAL_INFO_CHANGED:Lio/didomi/sdk/apiEvents/ApiEventType;

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/b;->a:Lio/didomi/sdk/apiEvents/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v2, v8

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/apiEvents/a;->a(Lio/didomi/sdk/apiEvents/a;Lio/didomi/sdk/apiEvents/ApiEventType;Lio/didomi/sdk/i;Lio/didomi/sdk/user/UserAuth;ZILjava/lang/Object;)Lio/didomi/sdk/e;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lio/didomi/sdk/e;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lio/didomi/sdk/apiEvents/b;->a([Lio/didomi/sdk/e;)Z

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->l:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_25
    return-void
.end method

.method public final j()V
    .registers 10

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->l:Ljava/util/Set;

    sget-object v8, Lio/didomi/sdk/apiEvents/ApiEventType;->UI_ACTION_SHOWN_PERSONAL_DATA_TYPES:Lio/didomi/sdk/apiEvents/ApiEventType;

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/b;->a:Lio/didomi/sdk/apiEvents/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v2, v8

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/apiEvents/a;->a(Lio/didomi/sdk/apiEvents/a;Lio/didomi/sdk/apiEvents/ApiEventType;Lio/didomi/sdk/i;Lio/didomi/sdk/user/UserAuth;ZILjava/lang/Object;)Lio/didomi/sdk/e;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lio/didomi/sdk/e;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lio/didomi/sdk/apiEvents/b;->a([Lio/didomi/sdk/e;)Z

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->l:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_25
    return-void
.end method

.method public final k()V
    .registers 10

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->l:Ljava/util/Set;

    sget-object v8, Lio/didomi/sdk/apiEvents/ApiEventType;->UI_ACTION_SHOWN_PURPOSES:Lio/didomi/sdk/apiEvents/ApiEventType;

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/b;->a:Lio/didomi/sdk/apiEvents/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v2, v8

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/apiEvents/a;->a(Lio/didomi/sdk/apiEvents/a;Lio/didomi/sdk/apiEvents/ApiEventType;Lio/didomi/sdk/i;Lio/didomi/sdk/user/UserAuth;ZILjava/lang/Object;)Lio/didomi/sdk/e;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lio/didomi/sdk/e;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lio/didomi/sdk/apiEvents/b;->a([Lio/didomi/sdk/e;)Z

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->l:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_25
    return-void
.end method

.method public final l()V
    .registers 10

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->l:Ljava/util/Set;

    sget-object v8, Lio/didomi/sdk/apiEvents/ApiEventType;->UI_ACTION_SHOWN_VENDORS:Lio/didomi/sdk/apiEvents/ApiEventType;

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/b;->a:Lio/didomi/sdk/apiEvents/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v2, v8

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/apiEvents/a;->a(Lio/didomi/sdk/apiEvents/a;Lio/didomi/sdk/apiEvents/ApiEventType;Lio/didomi/sdk/i;Lio/didomi/sdk/user/UserAuth;ZILjava/lang/Object;)Lio/didomi/sdk/e;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lio/didomi/sdk/e;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lio/didomi/sdk/apiEvents/b;->a([Lio/didomi/sdk/e;)Z

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->l:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_25
    return-void
.end method

.method public final m()V
    .registers 10

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->l:Ljava/util/Set;

    sget-object v8, Lio/didomi/sdk/apiEvents/ApiEventType;->UI_ACTION_VENDOR_CHANGED:Lio/didomi/sdk/apiEvents/ApiEventType;

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/b;->a:Lio/didomi/sdk/apiEvents/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v2, v8

    invoke-static/range {v1 .. v7}, Lio/didomi/sdk/apiEvents/a;->a(Lio/didomi/sdk/apiEvents/a;Lio/didomi/sdk/apiEvents/ApiEventType;Lio/didomi/sdk/i;Lio/didomi/sdk/user/UserAuth;ZILjava/lang/Object;)Lio/didomi/sdk/e;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lio/didomi/sdk/e;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-direct {p0, v1}, Lio/didomi/sdk/apiEvents/b;->a([Lio/didomi/sdk/e;)Z

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b;->l:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_25
    return-void
.end method

###### Class io.didomi.sdk.apiEvents.b.a (io.didomi.sdk.apiEvents.b$a)
.class final Lio/didomi/sdk/apiEvents/b$a;
.super Lkotlin/coroutines/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/apiEvents/b;->b([Lio/didomi/sdk/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/j;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/s;",
        "Lkotlin/coroutines/d<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/e;
    c = "io.didomi.sdk.apiEvents.ApiEventsRepository$sendEvents$1"
    f = "ApiEventsRepository.kt"
    i = {}
    l = {}
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lio/didomi/sdk/apiEvents/b;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/didomi/sdk/apiEvents/b;Ljava/lang/String;Lkotlin/coroutines/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/apiEvents/b;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lio/didomi/sdk/apiEvents/b$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/didomi/sdk/apiEvents/b$a;->b:Lio/didomi/sdk/apiEvents/b;

    iput-object p2, p0, Lio/didomi/sdk/apiEvents/b$a;->c:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/j;-><init>(ILkotlin/coroutines/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/s;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/s;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/apiEvents/b$a;->create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/apiEvents/b$a;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lio/didomi/sdk/apiEvents/b$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lkotlin/coroutines/d;)Lkotlin/coroutines/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/d<",
            "*>;)",
            "Lkotlin/coroutines/d<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance p1, Lio/didomi/sdk/apiEvents/b$a;

    iget-object v0, p0, Lio/didomi/sdk/apiEvents/b$a;->b:Lio/didomi/sdk/apiEvents/b;

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/b$a;->c:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lio/didomi/sdk/apiEvents/b$a;-><init>(Lio/didomi/sdk/apiEvents/b;Ljava/lang/String;Lkotlin/coroutines/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/s;

    check-cast p2, Lkotlin/coroutines/d;

    invoke-virtual {p0, p1, p2}, Lio/didomi/sdk/apiEvents/b$a;->a(Lkotlinx/coroutines/s;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    iget v0, p0, Lio/didomi/sdk/apiEvents/b$a;->a:I

    if-nez v0, :cond_3e

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/didomi/sdk/apiEvents/b$a;->b:Lio/didomi/sdk/apiEvents/b;

    invoke-static {p1}, Lio/didomi/sdk/apiEvents/b;->b(Lio/didomi/sdk/apiEvents/b;)Lio/didomi/sdk/Z2;

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/didomi/sdk/apiEvents/b$a;->b:Lio/didomi/sdk/apiEvents/b;

    invoke-static {v1}, Lio/didomi/sdk/apiEvents/b;->a(Lio/didomi/sdk/apiEvents/b;)Lio/didomi/sdk/Z;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/Z;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "events"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/didomi/sdk/apiEvents/b$a;->c:Ljava/lang/String;

    const-string p1, "content"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lio/didomi/sdk/apiEvents/b$a;->b:Lio/didomi/sdk/apiEvents/b;

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/Z2;->a(Lio/didomi/sdk/Z2;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/b3;IILjava/lang/Object;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_3e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

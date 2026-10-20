###### Class io.didomi.drawable.UserStatusParameters.Companion (io.didomi.sdk.O8$a)
.class public final Lio/didomi/sdk/O8$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/O8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lio/didomi/sdk/O8$a;",
        "",
        "<init>",
        "()V",
        "Lio/didomi/sdk/user/sync/model/ResponseConsents;",
        "syncConsents",
        "Lio/didomi/sdk/O8;",
        "a",
        "(Lio/didomi/sdk/user/sync/model/ResponseConsents;)Lio/didomi/sdk/O8;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/O8$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/didomi/sdk/user/sync/model/ResponseConsents;)Lio/didomi/sdk/O8;
    .registers 29

    if-eqz p1, :cond_66

    new-instance v13, Lio/didomi/sdk/O8;

    invoke-static/range {p1 .. p1}, Lio/didomi/sdk/t5;->e(Lio/didomi/sdk/user/sync/model/ResponseConsents;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_e
    move-object v1, v0

    invoke-static/range {p1 .. p1}, Lio/didomi/sdk/t5;->a(Lio/didomi/sdk/user/sync/model/ResponseConsents;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_19

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_19
    move-object v2, v0

    invoke-static/range {p1 .. p1}, Lio/didomi/sdk/t5;->g(Lio/didomi/sdk/user/sync/model/ResponseConsents;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_24

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_24
    move-object v3, v0

    invoke-static/range {p1 .. p1}, Lio/didomi/sdk/t5;->c(Lio/didomi/sdk/user/sync/model/ResponseConsents;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_2f

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_2f
    move-object v4, v0

    invoke-static/range {p1 .. p1}, Lio/didomi/sdk/t5;->f(Lio/didomi/sdk/user/sync/model/ResponseConsents;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_3a

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_3a
    move-object v5, v0

    invoke-static/range {p1 .. p1}, Lio/didomi/sdk/t5;->b(Lio/didomi/sdk/user/sync/model/ResponseConsents;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_45

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_45
    move-object v6, v0

    invoke-static/range {p1 .. p1}, Lio/didomi/sdk/t5;->h(Lio/didomi/sdk/user/sync/model/ResponseConsents;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_50

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_50
    move-object v7, v0

    invoke-static/range {p1 .. p1}, Lio/didomi/sdk/t5;->d(Lio/didomi/sdk/user/sync/model/ResponseConsents;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_5b

    invoke-static {}, Lkotlin/collections/h0;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_5b
    move-object v8, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x300

    const/4 v12, 0x0

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lio/didomi/sdk/O8;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZLjava/lang/String;ILkotlin/jvm/internal/n;)V

    goto :goto_83

    :cond_66
    new-instance v13, Lio/didomi/sdk/O8;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x3ff

    const/16 v26, 0x0

    move-object v14, v13

    invoke-direct/range {v14 .. v26}, Lio/didomi/sdk/O8;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ZLjava/lang/String;ILkotlin/jvm/internal/n;)V

    :goto_83
    return-object v13
.end method

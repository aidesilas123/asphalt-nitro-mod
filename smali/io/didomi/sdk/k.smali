###### Class io.didomi.drawable.C1806k (io.didomi.sdk.k)
.class public final Lio/didomi/sdk/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/k$a;,
        Lio/didomi/sdk/k$b;,
        Lio/didomi/sdk/k$c;,
        Lio/didomi/sdk/k$d;,
        Lio/didomi/sdk/k$e;,
        Lio/didomi/sdk/k$f;,
        Lio/didomi/sdk/k$g;,
        Lio/didomi/sdk/k$h;,
        Lio/didomi/sdk/k$i;,
        Lio/didomi/sdk/k$j;,
        Lio/didomi/sdk/k$k;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008+\u0008\u0086\u0008\u0018\u0000 N2\u00020\u0001:\u000b\'*.,06;9=@3B\u00a3\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u0012 \u0008\u0002\u0010\u0010\u001a\u001a\u0012\u0004\u0012\u00020\u000f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000e0\u000e\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0013\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0016\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0018\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u000fH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0010\u0010!\u001a\u00020 H\u00d6\u0001\u00a2\u0006\u0004\u0008!\u0010\"J\u001a\u0010%\u001a\u00020$2\u0008\u0010#\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008%\u0010&R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\'\u0010(\u001a\u0004\u0008\'\u0010)R\u001a\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008*\u0010+\u001a\u0004\u0008,\u0010-R\u001a\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101R\u001a\u0010\t\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008,\u00102\u001a\u0004\u00083\u00104R\u001a\u0010\u000b\u001a\u00020\n8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00080\u00105\u001a\u0004\u00086\u00107R\u001a\u0010\r\u001a\u00020\u000c8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00086\u00108\u001a\u0004\u00089\u0010:R2\u0010\u0010\u001a\u001a\u0012\u0004\u0012\u00020\u000f\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f0\u000e0\u000e8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008;\u0010<\u001a\u0004\u0008=\u0010>R\u001a\u0010\u0012\u001a\u00020\u00118\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00089\u0010?\u001a\u0004\u0008@\u0010AR\u001a\u0010\u0014\u001a\u00020\u00138\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008=\u0010B\u001a\u0004\u0008C\u0010DR\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008@\u0010E\u001a\u0004\u0008F\u0010\u001fR\u001a\u0010\u0017\u001a\u00020\u00168\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u00083\u0010G\u001a\u0004\u0008;\u0010HR\u001a\u0010\u0019\u001a\u00020\u00188\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008C\u0010I\u001a\u0004\u0008.\u0010JR\u001a\u0010\u001b\u001a\u00020\u001a8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008K\u0010L\u001a\u0004\u0008*\u0010M\u00a8\u0006O"
    }
    d2 = {
        "Lio/didomi/sdk/k;",
        "",
        "Lio/didomi/sdk/k$a;",
        "app",
        "Lio/didomi/sdk/k$e;",
        "languages",
        "Lio/didomi/sdk/k$f;",
        "notice",
        "Lio/didomi/sdk/k$j;",
        "underageNotice",
        "Lio/didomi/sdk/k$g;",
        "preferences",
        "Lio/didomi/sdk/config/app/SyncConfiguration;",
        "sync",
        "",
        "",
        "textsConfiguration",
        "Lio/didomi/sdk/k$i;",
        "theme",
        "Lio/didomi/sdk/k$k;",
        "user",
        "version",
        "Lio/didomi/sdk/k$h;",
        "regulation",
        "Lio/didomi/sdk/k$d;",
        "integrations",
        "Lio/didomi/sdk/k$c;",
        "featureFlags",
        "<init>",
        "(Lio/didomi/sdk/k$a;Lio/didomi/sdk/k$e;Lio/didomi/sdk/k$f;Lio/didomi/sdk/k$j;Lio/didomi/sdk/k$g;Lio/didomi/sdk/config/app/SyncConfiguration;Ljava/util/Map;Lio/didomi/sdk/k$i;Lio/didomi/sdk/k$k;Ljava/lang/String;Lio/didomi/sdk/k$h;Lio/didomi/sdk/k$d;Lio/didomi/sdk/k$c;)V",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "a",
        "Lio/didomi/sdk/k$a;",
        "()Lio/didomi/sdk/k$a;",
        "b",
        "Lio/didomi/sdk/k$e;",
        "d",
        "()Lio/didomi/sdk/k$e;",
        "c",
        "Lio/didomi/sdk/k$f;",
        "e",
        "()Lio/didomi/sdk/k$f;",
        "Lio/didomi/sdk/k$j;",
        "k",
        "()Lio/didomi/sdk/k$j;",
        "Lio/didomi/sdk/k$g;",
        "f",
        "()Lio/didomi/sdk/k$g;",
        "Lio/didomi/sdk/config/app/SyncConfiguration;",
        "h",
        "()Lio/didomi/sdk/config/app/SyncConfiguration;",
        "g",
        "Ljava/util/Map;",
        "i",
        "()Ljava/util/Map;",
        "Lio/didomi/sdk/k$i;",
        "j",
        "()Lio/didomi/sdk/k$i;",
        "Lio/didomi/sdk/k$k;",
        "l",
        "()Lio/didomi/sdk/k$k;",
        "Ljava/lang/String;",
        "getVersion",
        "Lio/didomi/sdk/k$h;",
        "()Lio/didomi/sdk/k$h;",
        "Lio/didomi/sdk/k$d;",
        "()Lio/didomi/sdk/k$d;",
        "m",
        "Lio/didomi/sdk/k$c;",
        "()Lio/didomi/sdk/k$c;",
        "n",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final n:Lio/didomi/sdk/k$b;


# instance fields
.field private final a:Lio/didomi/sdk/k$a;
    .annotation runtime Lcom/google/gson/r/c;
        value = "app"
    .end annotation
.end field

.field private final b:Lio/didomi/sdk/k$e;
    .annotation runtime Lcom/google/gson/r/c;
        value = "languages"
    .end annotation
.end field

.field private final c:Lio/didomi/sdk/k$f;
    .annotation runtime Lcom/google/gson/r/c;
        value = "notice"
    .end annotation
.end field

.field private final d:Lio/didomi/sdk/k$j;
    .annotation runtime Lcom/google/gson/r/c;
        value = "underageNotice"
    .end annotation
.end field

.field private final e:Lio/didomi/sdk/k$g;
    .annotation runtime Lcom/google/gson/r/c;
        value = "preferences"
    .end annotation
.end field

.field private final f:Lio/didomi/sdk/config/app/SyncConfiguration;
    .annotation runtime Lcom/google/gson/r/c;
        value = "sync"
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/r/c;
        value = "texts"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Lio/didomi/sdk/k$i;
    .annotation runtime Lcom/google/gson/r/c;
        value = "theme"
    .end annotation
.end field

.field private final i:Lio/didomi/sdk/k$k;
    .annotation runtime Lcom/google/gson/r/c;
        value = "user"
    .end annotation
.end field

.field private final j:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/r/c;
        value = "version"
    .end annotation
.end field

.field private final k:Lio/didomi/sdk/k$h;
    .annotation runtime Lcom/google/gson/r/c;
        value = "regulation"
    .end annotation
.end field

.field private final l:Lio/didomi/sdk/k$d;
    .annotation runtime Lcom/google/gson/r/c;
        value = "integrations"
    .end annotation
.end field

.field private final m:Lio/didomi/sdk/k$c;
    .annotation runtime Lcom/google/gson/r/c;
        value = "featureFlags"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/k$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/k$b;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/k;->n:Lio/didomi/sdk/k$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 17

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x1fff

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lio/didomi/sdk/k;-><init>(Lio/didomi/sdk/k$a;Lio/didomi/sdk/k$e;Lio/didomi/sdk/k$f;Lio/didomi/sdk/k$j;Lio/didomi/sdk/k$g;Lio/didomi/sdk/config/app/SyncConfiguration;Ljava/util/Map;Lio/didomi/sdk/k$i;Lio/didomi/sdk/k$k;Ljava/lang/String;Lio/didomi/sdk/k$h;Lio/didomi/sdk/k$d;Lio/didomi/sdk/k$c;ILkotlin/jvm/internal/n;)V

    return-void
.end method

.method public constructor <init>(Lio/didomi/sdk/k$a;Lio/didomi/sdk/k$e;Lio/didomi/sdk/k$f;Lio/didomi/sdk/k$j;Lio/didomi/sdk/k$g;Lio/didomi/sdk/config/app/SyncConfiguration;Ljava/util/Map;Lio/didomi/sdk/k$i;Lio/didomi/sdk/k$k;Ljava/lang/String;Lio/didomi/sdk/k$h;Lio/didomi/sdk/k$d;Lio/didomi/sdk/k$c;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/didomi/sdk/k$a;",
            "Lio/didomi/sdk/k$e;",
            "Lio/didomi/sdk/k$f;",
            "Lio/didomi/sdk/k$j;",
            "Lio/didomi/sdk/k$g;",
            "Lio/didomi/sdk/config/app/SyncConfiguration;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lio/didomi/sdk/k$i;",
            "Lio/didomi/sdk/k$k;",
            "Ljava/lang/String;",
            "Lio/didomi/sdk/k$h;",
            "Lio/didomi/sdk/k$d;",
            "Lio/didomi/sdk/k$c;",
            ")V"
        }
    .end annotation

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languages"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notice"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "underageNotice"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preferences"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sync"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "textsConfiguration"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "theme"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "regulation"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "integrations"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlags"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/didomi/sdk/k;->a:Lio/didomi/sdk/k$a;

    iput-object p2, p0, Lio/didomi/sdk/k;->b:Lio/didomi/sdk/k$e;

    iput-object p3, p0, Lio/didomi/sdk/k;->c:Lio/didomi/sdk/k$f;

    iput-object p4, p0, Lio/didomi/sdk/k;->d:Lio/didomi/sdk/k$j;

    iput-object p5, p0, Lio/didomi/sdk/k;->e:Lio/didomi/sdk/k$g;

    iput-object p6, p0, Lio/didomi/sdk/k;->f:Lio/didomi/sdk/config/app/SyncConfiguration;

    iput-object p7, p0, Lio/didomi/sdk/k;->g:Ljava/util/Map;

    iput-object p8, p0, Lio/didomi/sdk/k;->h:Lio/didomi/sdk/k$i;

    iput-object p9, p0, Lio/didomi/sdk/k;->i:Lio/didomi/sdk/k$k;

    iput-object p10, p0, Lio/didomi/sdk/k;->j:Ljava/lang/String;

    iput-object p11, p0, Lio/didomi/sdk/k;->k:Lio/didomi/sdk/k$h;

    iput-object p12, p0, Lio/didomi/sdk/k;->l:Lio/didomi/sdk/k$d;

    iput-object p13, p0, Lio/didomi/sdk/k;->m:Lio/didomi/sdk/k$c;

    return-void
.end method

.method public synthetic constructor <init>(Lio/didomi/sdk/k$a;Lio/didomi/sdk/k$e;Lio/didomi/sdk/k$f;Lio/didomi/sdk/k$j;Lio/didomi/sdk/k$g;Lio/didomi/sdk/config/app/SyncConfiguration;Ljava/util/Map;Lio/didomi/sdk/k$i;Lio/didomi/sdk/k$k;Ljava/lang/String;Lio/didomi/sdk/k$h;Lio/didomi/sdk/k$d;Lio/didomi/sdk/k$c;ILkotlin/jvm/internal/n;)V
    .registers 38

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1e

    new-instance v1, Lio/didomi/sdk/k$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1fff

    const/16 v17, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lio/didomi/sdk/k$a;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/k$a$b;Ljava/util/List;Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lio/didomi/sdk/k$a$a;ZILkotlin/jvm/internal/n;)V

    goto :goto_20

    :cond_1e
    move-object/from16 v1, p1

    :goto_20
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v2, :cond_2c

    new-instance v2, Lio/didomi/sdk/k$e;

    invoke-direct {v2, v4, v4, v3, v4}, Lio/didomi/sdk/k$e;-><init>(Ljava/util/Set;Ljava/lang/String;ILkotlin/jvm/internal/n;)V

    goto :goto_2e

    :cond_2c
    move-object/from16 v2, p2

    :goto_2e
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_48

    new-instance v5, Lio/didomi/sdk/k$f;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3ff

    const/16 v18, 0x0

    move-object v6, v5

    invoke-direct/range {v6 .. v18}, Lio/didomi/sdk/k$f;-><init>(IZLio/didomi/sdk/k$f$b;Ljava/lang/String;Ljava/lang/String;ZZLio/didomi/sdk/k$f$c;ZZILkotlin/jvm/internal/n;)V

    goto :goto_4a

    :cond_48
    move-object/from16 v5, p3

    :goto_4a
    and-int/lit8 v6, v0, 0x8

    const/4 v7, 0x1

    if-eqz v6, :cond_55

    new-instance v6, Lio/didomi/sdk/k$j;

    invoke-direct {v6, v4, v7, v4}, Lio/didomi/sdk/k$j;-><init>(Lio/didomi/sdk/k$j$a;ILkotlin/jvm/internal/n;)V

    goto :goto_57

    :cond_55
    move-object/from16 v6, p4

    :goto_57
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_6e

    new-instance v8, Lio/didomi/sdk/k$g;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x7f

    const/16 v18, 0x0

    move-object v9, v8

    invoke-direct/range {v9 .. v18}, Lio/didomi/sdk/k$g;-><init>(ZLio/didomi/sdk/k$g$a;ZZZLjava/util/List;Lio/didomi/sdk/S5;ILkotlin/jvm/internal/n;)V

    goto :goto_70

    :cond_6e
    move-object/from16 v8, p5

    :goto_70
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_8b

    new-instance v9, Lio/didomi/sdk/config/app/SyncConfiguration;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x7

    const/4 v14, 0x0

    move-object/from16 p1, v9

    move/from16 p2, v10

    move/from16 p3, v11

    move/from16 p4, v12

    move/from16 p5, v13

    move-object/from16 p6, v14

    invoke-direct/range {p1 .. p6}, Lio/didomi/sdk/config/app/SyncConfiguration;-><init>(ZIIILkotlin/jvm/internal/n;)V

    goto :goto_8d

    :cond_8b
    move-object/from16 v9, p6

    :goto_8d
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_96

    invoke-static {}, Lkotlin/collections/d0;->emptyMap()Ljava/util/Map;

    move-result-object v10

    goto :goto_98

    :cond_96
    move-object/from16 v10, p7

    :goto_98
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_b2

    new-instance v11, Lio/didomi/sdk/k$i;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x7f

    const/16 v21, 0x0

    move-object v12, v11

    invoke-direct/range {v12 .. v21}, Lio/didomi/sdk/k$i;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/didomi/sdk/k$i$b;Lio/didomi/sdk/k$i$c;Lio/didomi/sdk/k$i$c;ZILkotlin/jvm/internal/n;)V

    goto :goto_b4

    :cond_b2
    move-object/from16 v11, p8

    :goto_b4
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_d1

    new-instance v12, Lio/didomi/sdk/k$k;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x7

    const/16 v17, 0x0

    move-object/from16 p1, v12

    move-object/from16 p2, v13

    move-object/from16 p3, v14

    move-object/from16 p4, v15

    move/from16 p5, v16

    move-object/from16 p6, v17

    invoke-direct/range {p1 .. p6}, Lio/didomi/sdk/k$k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/n;)V

    goto :goto_d3

    :cond_d1
    move-object/from16 v12, p9

    :goto_d3
    and-int/lit16 v13, v0, 0x200

    if-eqz v13, :cond_d9

    move-object v13, v4

    goto :goto_db

    :cond_d9
    move-object/from16 v13, p10

    :goto_db
    and-int/lit16 v14, v0, 0x400

    if-eqz v14, :cond_fa

    new-instance v14, Lio/didomi/sdk/k$h;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x7

    const/16 v19, 0x0

    move-object/from16 p1, v14

    move-object/from16 p2, v15

    move-object/from16 p3, v16

    move-object/from16 p4, v17

    move/from16 p5, v18

    move-object/from16 p6, v19

    invoke-direct/range {p1 .. p6}, Lio/didomi/sdk/k$h;-><init>(Ljava/lang/String;Lio/didomi/sdk/k$h$a;Lio/didomi/sdk/k$h$b;ILkotlin/jvm/internal/n;)V

    goto :goto_fc

    :cond_fa
    move-object/from16 v14, p11

    :goto_fc
    and-int/lit16 v15, v0, 0x800

    if-eqz v15, :cond_106

    new-instance v15, Lio/didomi/sdk/k$d;

    invoke-direct {v15, v4, v7, v4}, Lio/didomi/sdk/k$d;-><init>(Lio/didomi/sdk/k$d$a;ILkotlin/jvm/internal/n;)V

    goto :goto_108

    :cond_106
    move-object/from16 v15, p12

    :goto_108
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_113

    new-instance v0, Lio/didomi/sdk/k$c;

    const/4 v7, 0x0

    invoke-direct {v0, v7, v7, v3, v4}, Lio/didomi/sdk/k$c;-><init>(ZZILkotlin/jvm/internal/n;)V

    goto :goto_115

    :cond_113
    move-object/from16 v0, p13

    :goto_115
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v8

    move-object/from16 p7, v9

    move-object/from16 p8, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v13

    move-object/from16 p12, v14

    move-object/from16 p13, v15

    move-object/from16 p14, v0

    invoke-direct/range {p1 .. p14}, Lio/didomi/sdk/k;-><init>(Lio/didomi/sdk/k$a;Lio/didomi/sdk/k$e;Lio/didomi/sdk/k$f;Lio/didomi/sdk/k$j;Lio/didomi/sdk/k$g;Lio/didomi/sdk/config/app/SyncConfiguration;Ljava/util/Map;Lio/didomi/sdk/k$i;Lio/didomi/sdk/k$k;Ljava/lang/String;Lio/didomi/sdk/k$h;Lio/didomi/sdk/k$d;Lio/didomi/sdk/k$c;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/k$a;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k;->a:Lio/didomi/sdk/k$a;

    return-object v0
.end method

.method public final b()Lio/didomi/sdk/k$c;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k;->m:Lio/didomi/sdk/k$c;

    return-object v0
.end method

.method public final c()Lio/didomi/sdk/k$d;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k;->l:Lio/didomi/sdk/k$d;

    return-object v0
.end method

.method public final d()Lio/didomi/sdk/k$e;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k;->b:Lio/didomi/sdk/k$e;

    return-object v0
.end method

.method public final e()Lio/didomi/sdk/k$f;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k;->c:Lio/didomi/sdk/k$f;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lio/didomi/sdk/k;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lio/didomi/sdk/k;

    iget-object v1, p0, Lio/didomi/sdk/k;->a:Lio/didomi/sdk/k$a;

    iget-object v3, p1, Lio/didomi/sdk/k;->a:Lio/didomi/sdk/k$a;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lio/didomi/sdk/k;->b:Lio/didomi/sdk/k$e;

    iget-object v3, p1, Lio/didomi/sdk/k;->b:Lio/didomi/sdk/k$e;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lio/didomi/sdk/k;->c:Lio/didomi/sdk/k$f;

    iget-object v3, p1, Lio/didomi/sdk/k;->c:Lio/didomi/sdk/k$f;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lio/didomi/sdk/k;->d:Lio/didomi/sdk/k$j;

    iget-object v3, p1, Lio/didomi/sdk/k;->d:Lio/didomi/sdk/k$j;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lio/didomi/sdk/k;->e:Lio/didomi/sdk/k$g;

    iget-object v3, p1, Lio/didomi/sdk/k;->e:Lio/didomi/sdk/k$g;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object v1, p0, Lio/didomi/sdk/k;->f:Lio/didomi/sdk/config/app/SyncConfiguration;

    iget-object v3, p1, Lio/didomi/sdk/k;->f:Lio/didomi/sdk/config/app/SyncConfiguration;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    return v2

    :cond_4e
    iget-object v1, p0, Lio/didomi/sdk/k;->g:Ljava/util/Map;

    iget-object v3, p1, Lio/didomi/sdk/k;->g:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    return v2

    :cond_59
    iget-object v1, p0, Lio/didomi/sdk/k;->h:Lio/didomi/sdk/k$i;

    iget-object v3, p1, Lio/didomi/sdk/k;->h:Lio/didomi/sdk/k$i;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    return v2

    :cond_64
    iget-object v1, p0, Lio/didomi/sdk/k;->i:Lio/didomi/sdk/k$k;

    iget-object v3, p1, Lio/didomi/sdk/k;->i:Lio/didomi/sdk/k$k;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    return v2

    :cond_6f
    iget-object v1, p0, Lio/didomi/sdk/k;->j:Ljava/lang/String;

    iget-object v3, p1, Lio/didomi/sdk/k;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    return v2

    :cond_7a
    iget-object v1, p0, Lio/didomi/sdk/k;->k:Lio/didomi/sdk/k$h;

    iget-object v3, p1, Lio/didomi/sdk/k;->k:Lio/didomi/sdk/k$h;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_85

    return v2

    :cond_85
    iget-object v1, p0, Lio/didomi/sdk/k;->l:Lio/didomi/sdk/k$d;

    iget-object v3, p1, Lio/didomi/sdk/k;->l:Lio/didomi/sdk/k$d;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_90

    return v2

    :cond_90
    iget-object v1, p0, Lio/didomi/sdk/k;->m:Lio/didomi/sdk/k$c;

    iget-object p1, p1, Lio/didomi/sdk/k;->m:Lio/didomi/sdk/k$c;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9b

    return v2

    :cond_9b
    return v0
.end method

.method public final f()Lio/didomi/sdk/k$g;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k;->e:Lio/didomi/sdk/k$g;

    return-object v0
.end method

.method public final g()Lio/didomi/sdk/k$h;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k;->k:Lio/didomi/sdk/k$h;

    return-object v0
.end method

.method public final h()Lio/didomi/sdk/config/app/SyncConfiguration;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k;->f:Lio/didomi/sdk/config/app/SyncConfiguration;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/k;->a:Lio/didomi/sdk/k$a;

    invoke-virtual {v0}, Lio/didomi/sdk/k$a;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k;->b:Lio/didomi/sdk/k$e;

    invoke-virtual {v1}, Lio/didomi/sdk/k$e;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k;->c:Lio/didomi/sdk/k$f;

    invoke-virtual {v1}, Lio/didomi/sdk/k$f;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k;->d:Lio/didomi/sdk/k$j;

    invoke-virtual {v1}, Lio/didomi/sdk/k$j;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k;->e:Lio/didomi/sdk/k$g;

    invoke-virtual {v1}, Lio/didomi/sdk/k$g;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k;->f:Lio/didomi/sdk/config/app/SyncConfiguration;

    invoke-virtual {v1}, Lio/didomi/sdk/config/app/SyncConfiguration;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k;->g:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k;->h:Lio/didomi/sdk/k$i;

    invoke-virtual {v1}, Lio/didomi/sdk/k$i;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k;->i:Lio/didomi/sdk/k$k;

    invoke-virtual {v1}, Lio/didomi/sdk/k$k;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k;->j:Ljava/lang/String;

    if-nez v1, :cond_56

    const/4 v1, 0x0

    goto :goto_5a

    :cond_56
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k;->k:Lio/didomi/sdk/k$h;

    invoke-virtual {v1}, Lio/didomi/sdk/k$h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k;->l:Lio/didomi/sdk/k$d;

    invoke-virtual {v1}, Lio/didomi/sdk/k$d;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lio/didomi/sdk/k;->m:Lio/didomi/sdk/k$c;

    invoke-virtual {v1}, Lio/didomi/sdk/k$c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final i()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/didomi/sdk/k;->g:Ljava/util/Map;

    return-object v0
.end method

.method public final j()Lio/didomi/sdk/k$i;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k;->h:Lio/didomi/sdk/k$i;

    return-object v0
.end method

.method public final k()Lio/didomi/sdk/k$j;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k;->d:Lio/didomi/sdk/k$j;

    return-object v0
.end method

.method public final l()Lio/didomi/sdk/k$k;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/k;->i:Lio/didomi/sdk/k$k;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppConfiguration(app="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k;->a:Lio/didomi/sdk/k$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", languages="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k;->b:Lio/didomi/sdk/k$e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", notice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k;->c:Lio/didomi/sdk/k$f;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", underageNotice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k;->d:Lio/didomi/sdk/k$j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", preferences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k;->e:Lio/didomi/sdk/k$g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sync="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k;->f:Lio/didomi/sdk/config/app/SyncConfiguration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textsConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k;->g:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", theme="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k;->h:Lio/didomi/sdk/k$i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k;->i:Lio/didomi/sdk/k$k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", regulation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k;->k:Lio/didomi/sdk/k$h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", integrations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k;->l:Lio/didomi/sdk/k$d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", featureFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/didomi/sdk/k;->m:Lio/didomi/sdk/k$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

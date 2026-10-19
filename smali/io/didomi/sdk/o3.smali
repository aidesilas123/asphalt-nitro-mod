###### Class io.didomi.drawable.C1850o3 (io.didomi.sdk.o3)
.class public final Lio/didomi/sdk/o3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/o3$a;,
        Lio/didomi/sdk/o3$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u0008\nB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001b\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/didomi/sdk/o3;",
        "",
        "<init>",
        "()V",
        "",
        "",
        "intSet",
        "Lio/didomi/iabtcf/decoder/utils/IntIterable;",
        "a",
        "(Ljava/util/Set;)Lio/didomi/iabtcf/decoder/utils/IntIterable;",
        "b",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lio/didomi/sdk/o3;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/o3;

    invoke-direct {v0}, Lio/didomi/sdk/o3;-><init>()V

    sput-object v0, Lio/didomi/sdk/o3;->a:Lio/didomi/sdk/o3;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)Lio/didomi/iabtcf/decoder/utils/IntIterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lio/didomi/iabtcf/decoder/utils/IntIterable;"
        }
    .end annotation

    const-string v0, "intSet"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/o3$a;

    invoke-direct {v0, p1}, Lio/didomi/sdk/o3$a;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

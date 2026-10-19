###### Class kotlinx.serialization.json.JsonNull (kotlinx.serialization.json.j)
.class public final Lkotlinx/serialization/json/j;
.super Lkotlinx/serialization/json/n;
.source "JsonElement.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000f\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u000bH\u00c6\u0001R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/serialization/json/JsonNull;",
        "Lkotlinx/serialization/json/JsonPrimitive;",
        "()V",
        "content",
        "",
        "getContent",
        "()Ljava/lang/String;",
        "isString",
        "",
        "()Z",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "kotlinx-serialization-json"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/g;
    with = Lkotlinx/serialization/json/k;
.end annotation


# static fields
.field public static final c:Lkotlinx/serialization/json/j;

.field private static final d:Ljava/lang/String;

.field private static final synthetic e:Lkotlin/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/i<",
            "Lkotlinx/serialization/c<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lkotlinx/serialization/json/j;

    invoke-direct {v0}, Lkotlinx/serialization/json/j;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/j;->c:Lkotlinx/serialization/json/j;

    const-string v0, "null"

    sput-object v0, Lkotlinx/serialization/json/j;->d:Ljava/lang/String;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->b:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lkotlinx/serialization/json/j$a;->a:Lkotlinx/serialization/json/j$a;

    invoke-static {v0, v1}, Lkotlin/j;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v0

    sput-object v0, Lkotlinx/serialization/json/j;->e:Lkotlin/i;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/n;-><init>(Lkotlin/jvm/internal/n;)V

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .registers 2

    sget-object v0, Lkotlinx/serialization/json/j;->d:Ljava/lang/String;

    return-object v0
.end method

###### Class kotlinx.serialization.json.JsonNull.a (kotlinx.serialization.json.j$a)
.class final Lkotlinx/serialization/json/j$a;
.super Lkotlin/jvm/internal/t;
.source "JsonElement.kt"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lkotlinx/serialization/c<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlinx/serialization/json/j$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlinx/serialization/json/j$a;

    invoke-direct {v0}, Lkotlinx/serialization/json/j$a;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/j$a;->a:Lkotlinx/serialization/json/j$a;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Lkotlinx/serialization/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lkotlinx/serialization/json/k;->a:Lkotlinx/serialization/json/k;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lkotlinx/serialization/json/j$a;->c()Lkotlinx/serialization/c;

    move-result-object v0

    return-object v0
.end method

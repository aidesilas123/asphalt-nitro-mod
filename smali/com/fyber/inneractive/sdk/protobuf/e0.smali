###### Class com.fyber.inneractive.sdk.protobuf.e0 (com.fyber.inneractive.sdk.protobuf.e0)
.class public abstract Lcom/fyber/inneractive/sdk/protobuf/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/inneractive/sdk/protobuf/e0$c;,
        Lcom/fyber/inneractive/sdk/protobuf/e0$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/fyber/inneractive/sdk/protobuf/e0;

.field public static final b:Lcom/fyber/inneractive/sdk/protobuf/e0;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/e0$b;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/protobuf/e0$b;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/protobuf/e0;->a:Lcom/fyber/inneractive/sdk/protobuf/e0;

    new-instance v0, Lcom/fyber/inneractive/sdk/protobuf/e0$c;

    invoke-direct {v0}, Lcom/fyber/inneractive/sdk/protobuf/e0$c;-><init>()V

    sput-object v0, Lcom/fyber/inneractive/sdk/protobuf/e0;->b:Lcom/fyber/inneractive/sdk/protobuf/e0;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/fyber/inneractive/sdk/protobuf/e0$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/fyber/inneractive/sdk/protobuf/e0;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;J)V
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method

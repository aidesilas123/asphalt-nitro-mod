###### Class kotlin.reflect.jvm.internal.impl.protobuf.p (kotlin.reflect.jvm.internal.impl.protobuf.p)
.class public Lkotlin/reflect/jvm/internal/impl/protobuf/p;
.super Ljava/lang/RuntimeException;
.source "UninitializedMessageException.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/j;)V
    .registers 2

    const-string p1, "Message was missing required fields.  (Lite runtime could not determine which fields were missing)."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/p;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public c()Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .registers 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/d;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

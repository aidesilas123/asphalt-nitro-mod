###### Class defpackage.b (b)
.class public final Lb;
.super Ljava/lang/Object;
.source "ByteStringStoreKt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000c\u001a\u00020\rH\u0001J\u0006\u0010\u000e\u001a\u00020\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00068G@GX\u0086\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "LByteStringStoreKt$Dsl;",
        "",
        "_builder",
        "LByteStringStoreOuterClass$ByteStringStore$Builder;",
        "(LByteStringStoreOuterClass$ByteStringStore$Builder;)V",
        "value",
        "Lcom/google/protobuf/ByteString;",
        "data",
        "getData",
        "()Lcom/google/protobuf/ByteString;",
        "setData",
        "(Lcom/google/protobuf/ByteString;)V",
        "_build",
        "LByteStringStoreOuterClass$ByteStringStore;",
        "clearData",
        "",
        "Companion",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lb$a;


# instance fields
.field private final b:LByteStringStoreOuterClass$ByteStringStore$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lb$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lb;->a:Lb$a;

    return-void
.end method

.method private constructor <init>(LByteStringStoreOuterClass$ByteStringStore$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb;->b:LByteStringStoreOuterClass$ByteStringStore$a;

    return-void
.end method

.method public synthetic constructor <init>(LByteStringStoreOuterClass$ByteStringStore$a;Lkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lb;-><init>(LByteStringStoreOuterClass$ByteStringStore$a;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()LByteStringStoreOuterClass$ByteStringStore;
    .registers 3

    iget-object v0, p0, Lb;->b:LByteStringStoreOuterClass$ByteStringStore$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$b;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    const-string v1, "_builder.build()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LByteStringStoreOuterClass$ByteStringStore;

    return-object v0
.end method

.method public final b(Lcom/google/protobuf/ByteString;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb;->b:LByteStringStoreOuterClass$ByteStringStore$a;

    invoke-virtual {v0, p1}, LByteStringStoreOuterClass$ByteStringStore$a;->b(Lcom/google/protobuf/ByteString;)LByteStringStoreOuterClass$ByteStringStore$a;

    return-void
.end method

###### Class b.a (b$a)
.class public final Lb$a;
.super Ljava/lang/Object;
.source "ByteStringStoreKt.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001\u00a8\u0006\u0007"
    }
    d2 = {
        "LByteStringStoreKt$Dsl$Companion;",
        "",
        "()V",
        "_create",
        "LByteStringStoreKt$Dsl;",
        "builder",
        "LByteStringStoreOuterClass$ByteStringStore$Builder;",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lb$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(LByteStringStoreOuterClass$ByteStringStore$a;)Lb;
    .registers 4

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lb;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lb;-><init>(LByteStringStoreOuterClass$ByteStringStore$a;Lkotlin/jvm/internal/n;)V

    return-object v0
.end method

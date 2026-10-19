###### Class kotlin.reflect.jvm.internal.impl.descriptors.e0 (kotlin.reflect.jvm.internal.impl.descriptors.e0)
.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/e0;
.super Ljava/lang/Object;
.source "SourceFile.java"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/e0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/e0$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/e0$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/e0;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/e0;

    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

###### Class kotlin.reflect.jvm.internal.impl.descriptors.e0.a (kotlin.reflect.jvm.internal.impl.descriptors.e0$a)
.class final Lkotlin/reflect/jvm/internal/impl/descriptors/e0$a;
.super Ljava/lang/Object;
.source "SourceFile.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

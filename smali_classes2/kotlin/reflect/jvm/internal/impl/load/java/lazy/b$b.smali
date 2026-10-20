###### Class kotlin.reflect.jvm.internal.impl.load.java.lazy.b.C0526b (kotlin.reflect.jvm.internal.impl.load.java.lazy.b$b)
.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b$b;
.super Ljava/lang/Object;
.source "context.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b$b;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b$b;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b$b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

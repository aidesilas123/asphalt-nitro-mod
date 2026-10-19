###### Class kotlin.reflect.jvm.internal.impl.util.b.a (kotlin.reflect.jvm.internal.impl.util.b$a)
.class public final Lkotlin/reflect/jvm/internal/impl/util/b$a;
.super Lkotlin/reflect/jvm/internal/impl/util/b;
.source "modifierChecks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final b:Lkotlin/reflect/jvm/internal/impl/util/b$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/b$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/b$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/b$a;->b:Lkotlin/reflect/jvm/internal/impl/util/b$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/util/b;-><init>(ZLkotlin/jvm/internal/n;)V

    return-void
.end method

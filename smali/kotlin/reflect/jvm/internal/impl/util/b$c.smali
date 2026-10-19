###### Class kotlin.reflect.jvm.internal.impl.util.b.c (kotlin.reflect.jvm.internal.impl.util.b$c)
.class public final Lkotlin/reflect/jvm/internal/impl/util/b$c;
.super Lkotlin/reflect/jvm/internal/impl/util/b;
.source "modifierChecks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final b:Lkotlin/reflect/jvm/internal/impl/util/b$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/b$c;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/b$c;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/b$c;->b:Lkotlin/reflect/jvm/internal/impl/util/b$c;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/util/b;-><init>(ZLkotlin/jvm/internal/n;)V

    return-void
.end method

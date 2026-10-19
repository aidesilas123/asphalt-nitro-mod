###### Class kotlin.reflect.jvm.internal.impl.util.j.b (kotlin.reflect.jvm.internal.impl.util.j$b)
.class public final Lkotlin/reflect/jvm/internal/impl/util/j$b;
.super Lkotlin/reflect/jvm/internal/impl/util/j;
.source "modifierChecks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/util/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final d:Lkotlin/reflect/jvm/internal/impl/util/j$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/j$b;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/j$b;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/j$b;->d:Lkotlin/reflect/jvm/internal/impl/util/j$b;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/util/j$b$a;->a:Lkotlin/reflect/jvm/internal/impl/util/j$b$a;

    const-string v1, "Int"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/util/j;-><init>(Ljava/lang/String;Lkotlin/jvm/b/l;Lkotlin/jvm/internal/n;)V

    return-void
.end method

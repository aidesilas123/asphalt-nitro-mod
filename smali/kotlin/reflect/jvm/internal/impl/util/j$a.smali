###### Class kotlin.reflect.jvm.internal.impl.util.j.a (kotlin.reflect.jvm.internal.impl.util.j$a)
.class public final Lkotlin/reflect/jvm/internal/impl/util/j$a;
.super Lkotlin/reflect/jvm/internal/impl/util/j;
.source "modifierChecks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/util/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final d:Lkotlin/reflect/jvm/internal/impl/util/j$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/util/j$a;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/util/j$a;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/util/j$a;->d:Lkotlin/reflect/jvm/internal/impl/util/j$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/util/j$a$a;->a:Lkotlin/reflect/jvm/internal/impl/util/j$a$a;

    const-string v1, "Boolean"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/util/j;-><init>(Ljava/lang/String;Lkotlin/jvm/b/l;Lkotlin/jvm/internal/n;)V

    return-void
.end method

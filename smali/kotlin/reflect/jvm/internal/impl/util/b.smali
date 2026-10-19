###### Class kotlin.reflect.jvm.internal.impl.util.b (kotlin.reflect.jvm.internal.impl.util.b)
.class public abstract Lkotlin/reflect/jvm/internal/impl/util/b;
.super Ljava/lang/Object;
.source "modifierChecks.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/util/b$b;,
        Lkotlin/reflect/jvm/internal/impl/util/b$a;,
        Lkotlin/reflect/jvm/internal/impl/util/b$c;
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lkotlin/reflect/jvm/internal/impl/util/b;->a:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLkotlin/jvm/internal/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/util/b;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/util/b;->a:Z

    return v0
.end method

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

###### Class kotlin.reflect.jvm.internal.impl.util.b.C0554b (kotlin.reflect.jvm.internal.impl.util.b$b)
.class public final Lkotlin/reflect/jvm/internal/impl/util/b$b;
.super Lkotlin/reflect/jvm/internal/impl/util/b;
.source "modifierChecks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/util/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/util/b;-><init>(ZLkotlin/jvm/internal/n;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/util/b$b;->b:Ljava/lang/String;

    return-void
.end method

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

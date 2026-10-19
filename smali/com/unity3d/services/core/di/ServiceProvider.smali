###### Class com.unity3d.services.core.di.ServiceProvider (com.unity3d.services.core.di.ServiceProvider)
.class public final Lcom/unity3d/services/core/di/ServiceProvider;
.super Ljava/lang/Object;
.source "ServiceProvider.kt"

# interfaces
.implements Lcom/unity3d/services/core/di/IServiceProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J!\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010$J\u0008\u0010%\u001a\u00020&H\u0002J\u0008\u0010\'\u001a\u00020(H\u0002J\u0008\u0010)\u001a\u00020*H\u0002J\u0008\u0010+\u001a\u00020\u001dH\u0016J\u0008\u0010,\u001a\u00020\u001dH\u0016J\u0008\u0010-\u001a\u00020.H\u0002J\u0010\u0010/\u001a\u0002002\u0006\u00101\u001a\u000202H\u0002J\u0008\u00103\u001a\u000204H\u0002J\u0016\u00105\u001a\u0008\u0012\u0004\u0012\u000207062\u0006\u0010 \u001a\u00020!H\u0002J,\u00108\u001a\u0008\u0012\u0004\u0012\u000207092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u000c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020706H\u0002J\u0016\u0010;\u001a\u00020<2\u000c\u0010=\u001a\u0008\u0012\u0004\u0012\u00020709H\u0002J&\u0010>\u001a\u0008\u0012\u0004\u0012\u000207092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010?\u001a\u00020\u0004H\u0002J\u0010\u0010@\u001a\u00020A2\u0006\u0010B\u001a\u00020CH\u0002J\u000e\u0010D\u001a\u0008\u0012\u0004\u0012\u00020706H\u0002J\u0008\u0010E\u001a\u00020FH\u0002J \u0010G\u001a\u00020H2\u0006\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020L2\u0006\u0010M\u001a\u00020NH\u0002J8\u0010O\u001a\u00020P2\u0006\u0010Q\u001a\u00020R2\u0006\u0010S\u001a\u00020T2\u0006\u0010\"\u001a\u00020#2\u0006\u0010U\u001a\u00020V2\u0006\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020ZH\u0002J\u0018\u0010[\u001a\u00020L2\u0006\u0010 \u001a\u00020!2\u0006\u0010\\\u001a\u00020]H\u0002J\u0018\u0010^\u001a\u00020_2\u0006\u0010\"\u001a\u00020#2\u0006\u0010`\u001a\u00020\u001fH\u0002J\u0016\u0010a\u001a\u0008\u0012\u0004\u0012\u000207062\u0006\u0010b\u001a\u00020cH\u0002J\u001e\u0010d\u001a\u0008\u0012\u0004\u0012\u000207092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J \u0010e\u001a\u00020f2\u0006\u0010`\u001a\u00020\u001f2\u0006\u0010g\u001a\u00020h2\u0006\u0010i\u001a\u00020jH\u0002J(\u0010k\u001a\u00020l2\u0006\u0010Q\u001a\u00020R2\u0006\u00101\u001a\u0002022\u0006\u0010m\u001a\u00020H2\u0006\u0010n\u001a\u00020AH\u0002J(\u0010o\u001a\u00020p2\u0006\u0010Q\u001a\u00020R2\u0006\u00101\u001a\u0002022\u0006\u0010m\u001a\u00020H2\u0006\u0010n\u001a\u00020AH\u0002JP\u0010q\u001a\u00020r2\u0006\u0010s\u001a\u00020t2\u0006\u0010u\u001a\u00020v2\u0006\u0010w\u001a\u00020x2\u0006\u0010y\u001a\u00020z2\u0006\u00101\u001a\u0002022\u0006\u0010m\u001a\u00020H2\u0006\u0010n\u001a\u00020A2\u0006\u0010{\u001a\u00020|2\u0006\u0010i\u001a\u00020jH\u0002J\u0019\u0010}\u001a\u00020~2\u0006\u00101\u001a\u0002022\u0007\u0010\u007f\u001a\u00030\u0080\u0001H\u0002J\u001a\u0010\u0081\u0001\u001a\u00030\u0082\u00012\u0006\u0010Q\u001a\u00020R2\u0006\u0010m\u001a\u00020HH\u0002J5\u0010\u0083\u0001\u001a\u00030\u0084\u00012\u0006\u0010Q\u001a\u00020R2\u0007\u0010\u0085\u0001\u001a\u00020~2\u0006\u00101\u001a\u0002022\u0006\u0010m\u001a\u00020H2\u0008\u0010\u0086\u0001\u001a\u00030\u0087\u0001H\u0002J\u0011\u0010\u0088\u0001\u001a\u00020c2\u0006\u00101\u001a\u000202H\u0002J\t\u0010\u0089\u0001\u001a\u00020CH\u0002J\u0013\u0010\u008a\u0001\u001a\u00020R2\u0008\u0010\u008b\u0001\u001a\u00030\u008c\u0001H\u0002J,\u0010\u008d\u0001\u001a\u00030\u008c\u00012\u0006\u0010B\u001a\u00020C2\u0006\u00101\u001a\u0002022\u0006\u0010m\u001a\u00020H2\u0008\u0010\u008e\u0001\u001a\u00030\u008f\u0001H\u0002J\u0012\u0010\u0090\u0001\u001a\u00030\u0091\u00012\u0006\u0010\"\u001a\u00020#H\u0002J%\u0010\u0092\u0001\u001a\u00030\u0093\u00012\u0006\u0010 \u001a\u00020!2\u0007\u0010\u0094\u0001\u001a\u0002042\u0008\u0010\u0095\u0001\u001a\u00030\u0096\u0001H\u0002J.\u0010\u0097\u0001\u001a\u0008\u0012\u0004\u0012\u000207092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\r\u0010\u0098\u0001\u001a\u0008\u0012\u0004\u0012\u00020706H\u0002Jj\u0010\u0099\u0001\u001a\u00030\u009a\u00012\u0007\u0010\u009b\u0001\u001a\u00020.2\u0008\u0010\u009c\u0001\u001a\u00030\u0093\u00012\u0008\u0010\u009d\u0001\u001a\u00030\u0091\u00012\u0006\u0010\"\u001a\u00020#2\u0006\u0010m\u001a\u00020H2\u0007\u0010\u009e\u0001\u001a\u00020r2\u0006\u00101\u001a\u0002022\u0006\u0010n\u001a\u00020A2\u0007\u0010\u009f\u0001\u001a\u00020_2\u0006\u0010i\u001a\u00020j2\u0007\u0010\u00a0\u0001\u001a\u00020vH\u0002J&\u0010\u00a1\u0001\u001a\u00030\u00a2\u00012\u0008\u0010\u00a3\u0001\u001a\u00030\u00a4\u00012\u0006\u00101\u001a\u0002022\u0008\u0010\u00a5\u0001\u001a\u00030\u00a6\u0001H\u0002J\u0019\u0010\u00a7\u0001\u001a\u00020h2\u0006\u00101\u001a\u0002022\u0006\u0010m\u001a\u00020HH\u0002J5\u0010\u00a8\u0001\u001a\u00020\u001f2\u0008\u0010\u00a9\u0001\u001a\u00030\u00aa\u00012\u0008\u0010\u00ab\u0001\u001a\u00030\u00ac\u00012\u0006\u0010\"\u001a\u00020#2\u0006\u0010i\u001a\u00020j2\u0006\u0010 \u001a\u00020!H\u0002J\u0017\u0010\u00ad\u0001\u001a\u0008\u0012\u0004\u0012\u000207062\u0006\u0010 \u001a\u00020!H\u0002J=\u0010\u00ae\u0001\u001a\u0008\u0012\u0004\u0012\u000207092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\r\u0010\u00af\u0001\u001a\u0008\u0012\u0004\u0012\u000207062\r\u0010\u00b0\u0001\u001a\u0008\u0012\u0004\u0012\u00020706H\u0002J\u0011\u0010\u00b1\u0001\u001a\u0002002\u0006\u00101\u001a\u000202H\u0002J\u0080\u0001\u0010\u00b2\u0001\u001a\u00030\u00b3\u00012\u0006\u0010\"\u001a\u00020#2\u0008\u0010\u00b4\u0001\u001a\u00030\u0084\u00012\u0007\u0010\u00b5\u0001\u001a\u0002002\u0008\u0010\u00b6\u0001\u001a\u00030\u00a2\u00012\u0007\u0010\u00b7\u0001\u001a\u00020f2\u0006\u00101\u001a\u0002022\u0008\u0010\u00b8\u0001\u001a\u00030\u00b9\u00012\u0008\u0010\u00ba\u0001\u001a\u00030\u00bb\u00012\u0006\u0010i\u001a\u00020j2\u0006\u0010U\u001a\u00020V2\u0006\u0010m\u001a\u00020H2\u0008\u0010\u00bc\u0001\u001a\u00030\u00bd\u00012\u0008\u0010\u00be\u0001\u001a\u00030\u00bf\u0001H\u0002J\u0014\u0010\u00c0\u0001\u001a\u00030\u00c1\u00012\u0008\u0010\u00c2\u0001\u001a\u00030\u00c3\u0001H\u0002J6\u0010\u00c4\u0001\u001a\u00030\u00c5\u00012\u0007\u0010\u00c6\u0001\u001a\u00020#2\u0008\u0010\u00c7\u0001\u001a\u00030\u00c8\u00012\u0007\u0010\u009b\u0001\u001a\u00020.2\u0006\u0010i\u001a\u00020j2\u0006\u00101\u001a\u000202H\u0002J?\u0010\u00c9\u0001\u001a\u00030\u00ca\u00012\u0007\u0010\u00c6\u0001\u001a\u00020#2\u0008\u0010\u00cb\u0001\u001a\u00030\u00cc\u00012\u0007\u0010\u009b\u0001\u001a\u00020.2\u0006\u0010i\u001a\u00020j2\u0007\u0010\u00a0\u0001\u001a\u00020v2\u0006\u00101\u001a\u000202H\u0002J\t\u0010\u00cd\u0001\u001a\u00020]H\u0002JH\u0010\u00ce\u0001\u001a\u00030\u00c8\u00012\u0006\u0010\"\u001a\u00020#2\u0007\u0010\u00cf\u0001\u001a\u00020p2\u0007\u0010\u00d0\u0001\u001a\u0002002\u0008\u0010\u00d1\u0001\u001a\u00030\u009a\u00012\u0006\u00101\u001a\u0002022\u0007\u0010\u00b7\u0001\u001a\u00020f2\u0007\u0010\u009b\u0001\u001a\u00020.H\u0002J\u0014\u0010\u00d2\u0001\u001a\u00030\u00d3\u00012\u0008\u0010\u00d4\u0001\u001a\u00030\u00c1\u0001H\u0002J\u0014\u0010\u00d5\u0001\u001a\u00030\u0080\u00012\u0008\u0010\u00d6\u0001\u001a\u00030\u00d3\u0001H\u0002J4\u0010\u00d7\u0001\u001a\u00030\u00d8\u00012\u0006\u0010Q\u001a\u00020R2\u0006\u0010\"\u001a\u00020#2\u0008\u0010\u00d9\u0001\u001a\u00030\u00da\u00012\u0006\u0010W\u001a\u00020X2\u0006\u0010Y\u001a\u00020ZH\u0002J\u0011\u0010\u00db\u0001\u001a\u0002002\u0006\u00101\u001a\u000202H\u0002J\u0011\u0010\u00dc\u0001\u001a\u0002002\u0006\u00101\u001a\u000202H\u0002J\u0011\u0010\u00dd\u0001\u001a\u00020N2\u0006\u0010 \u001a\u00020!H\u0002J\u001f\u0010\u00de\u0001\u001a\u0008\u0012\u0004\u0012\u000207092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J,\u0010\u00df\u0001\u001a\u00020x2\u0006\u0010\"\u001a\u00020#2\u0007\u0010\u00e0\u0001\u001a\u00020l2\u0007\u0010\u00e1\u0001\u001a\u0002002\u0007\u0010\u00b7\u0001\u001a\u00020fH\u0002J\t\u0010\u00e2\u0001\u001a\u00020#H\u0002J.\u0010\u00e3\u0001\u001a\u00030\u00e4\u00012\u0006\u0010\"\u001a\u00020#2\u0008\u0010\u00ab\u0001\u001a\u00030\u00ac\u00012\u0006\u0010i\u001a\u00020j2\u0008\u0010\u00e5\u0001\u001a\u00030\u00e6\u0001H\u0002J\n\u0010\u00e7\u0001\u001a\u00030\u00e6\u0001H\u0002J\u001c\u0010\u00e8\u0001\u001a\u00030\u00a6\u00012\u0006\u0010\"\u001a\u00020#2\u0008\u0010\u00e9\u0001\u001a\u00030\u00e4\u0001H\u0002J\u001a\u0010\u00ea\u0001\u001a\u00030\u0096\u00012\u0006\u0010\"\u001a\u00020#2\u0006\u0010i\u001a\u00020jH\u0002J-\u0010\u00eb\u0001\u001a\u0002022\u0007\u0010\u00ec\u0001\u001a\u00020<2\u0007\u0010\u00ed\u0001\u001a\u00020<2\u0007\u0010\u00ee\u0001\u001a\u00020<2\u0007\u0010\u00ef\u0001\u001a\u00020FH\u0002J\u001d\u0010\u00f0\u0001\u001a\u00030\u00cc\u00012\u0007\u0010\u009b\u0001\u001a\u00020.2\u0008\u0010\u00f1\u0001\u001a\u00030\u00f2\u0001H\u0002J6\u0010\u00f3\u0001\u001a\u00020J2\u0006\u0010 \u001a\u00020!2\u0007\u0010\u00f4\u0001\u001a\u00020<2\u0007\u0010\u00f5\u0001\u001a\u00020<2\u0007\u0010\u00f6\u0001\u001a\u00020<2\u0008\u0010\u00f7\u0001\u001a\u00030\u00f8\u0001H\u0002J&\u0010\u00f9\u0001\u001a\u00030\u00a4\u00012\u0008\u0010\u00fa\u0001\u001a\u00030\u0082\u00012\u0007\u0010\u00b5\u0001\u001a\u0002002\u0007\u0010\u00b7\u0001\u001a\u00020fH\u0002J\u0012\u0010\u00fb\u0001\u001a\u00030\u00bb\u00012\u0006\u0010\"\u001a\u00020#H\u0002J\u0018\u0010\u00fc\u0001\u001a\u00020X2\r\u0010=\u001a\t\u0012\u0005\u0012\u00030\u00fd\u000109H\u0002J \u0010\u00fe\u0001\u001a\t\u0012\u0005\u0012\u00030\u00fd\u0001092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002J\u001f\u0010\u00ff\u0001\u001a\u0008\u0012\u0004\u0012\u000207092\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0080\u0002"
    }
    d2 = {
        "Lcom/unity3d/services/core/di/ServiceProvider;",
        "Lcom/unity3d/services/core/di/IServiceProvider;",
        "()V",
        "DATA_STORE_AUID",
        "",
        "DATA_STORE_GATEWAY_CACHE",
        "DATA_STORE_GL_INFO",
        "DATA_STORE_IDFI",
        "DATA_STORE_PRIVACY",
        "DATA_STORE_PRIVACY_FSM",
        "DATA_STORE_UNIVERSAL_REQUEST",
        "DEV_CONSENT_PRIVACY_RULES",
        "GATEWAY_HOST",
        "GATEWAY_PORT",
        "",
        "HTTP_CACHE_DISK_SIZE",
        "",
        "HTTP_CLIENT_FETCH_TIMEOUT",
        "LEGACY_PRIVACY_RULES",
        "NAMED_AD_REQ",
        "NAMED_INIT_REQ",
        "NAMED_OPERATIVE_REQ",
        "NAMED_OTHER_REQ",
        "NAMED_SDK",
        "PREF_AUID",
        "PREF_DEFAULT",
        "PREF_GL_INFO",
        "PREF_IDFI",
        "serviceRegistry",
        "Lcom/unity3d/services/core/di/IServicesRegistry;",
        "buildNetworkClient",
        "Lcom/unity3d/services/core/network/core/HttpClient;",
        "context",
        "Landroid/content/Context;",
        "dispatchers",
        "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
        "(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getDefaultRequestPolicy",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;",
        "getDefaultRequestRetryPolicy",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;",
        "getDefaultRequestTimeoutPolicy",
        "Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;",
        "getRegistry",
        "initialize",
        "provideAdRepository",
        "Lcom/unity3d/ads/core/data/repository/AdRepository;",
        "provideAdRequestPolicy",
        "Lcom/unity3d/ads/core/domain/GetRequestPolicy;",
        "sessionRepository",
        "Lcom/unity3d/ads/core/data/repository/SessionRepository;",
        "provideAndroidWebViewClient",
        "Lcom/unity3d/ads/adplayer/AndroidWebViewClient;",
        "provideAuidDataMigration",
        "Landroidx/datastore/core/DataMigration;",
        "LByteStringStoreOuterClass$ByteStringStore;",
        "provideAuidDataStore",
        "Landroidx/datastore/core/DataStore;",
        "auidMigration",
        "provideByteStringDataSource",
        "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;",
        "dataStore",
        "provideByteStringDataStore",
        "dataStoreFile",
        "provideCampaignStateRepository",
        "Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;",
        "getSharedDataTimestamps",
        "Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;",
        "provideDefaultDataMigration",
        "provideDefaultNativeConfiguration",
        "Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;",
        "provideDeviceInfoRepository",
        "Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;",
        "staticDeviceInfoDataSource",
        "Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;",
        "dynamicDeviceInfoDataSource",
        "Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;",
        "privacyDeviceInfoDataSource",
        "Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;",
        "provideDiagnosticEventObserver",
        "Lcom/unity3d/ads/core/domain/events/DiagnosticEventObserver;",
        "getUniversalRequestForPayLoad",
        "Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;",
        "getDiagnosticEventBatchRequest",
        "Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventBatchRequest;",
        "diagnosticEventRepository",
        "Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;",
        "universalRequestDataSource",
        "Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;",
        "backgroundWorker",
        "Lcom/unity3d/ads/core/domain/work/BackgroundWorker;",
        "provideDynamicDeviceInfoDataSource",
        "lifecycleCache",
        "Lcom/unity3d/services/core/lifecycle/LifecycleCache;",
        "provideExecuteAdViewerRequest",
        "Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;",
        "httpClient",
        "provideFetchGLInfoDataMigration",
        "getOpenGLRendererInfo",
        "Lcom/unity3d/ads/core/domain/GetOpenGLRendererInfo;",
        "provideGatewayCacheDataStore",
        "provideGatewayClient",
        "Lcom/unity3d/ads/gatewayclient/GatewayClient;",
        "handleGatewayUniversalResponse",
        "Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;",
        "sendDiagnosticEvent",
        "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;",
        "provideGetAdDataRefreshRequest",
        "Lcom/unity3d/ads/core/domain/GetAdDataRefreshRequest;",
        "deviceInfoRepository",
        "campaignStateRepository",
        "provideGetAdRequest",
        "Lcom/unity3d/ads/core/domain/GetAdRequest;",
        "provideGetAndroidExposureUseCase",
        "Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;",
        "getAndroidAdPlayerContext",
        "Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;",
        "getOperativeEventApi",
        "Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;",
        "refresh",
        "Lcom/unity3d/ads/core/domain/Refresh;",
        "handleOpenUrl",
        "Lcom/unity3d/ads/core/domain/HandleOpenUrl;",
        "sendPrivacyUpdateRequest",
        "Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;",
        "provideGetClientInfo",
        "Lcom/unity3d/ads/core/domain/GetClientInfo;",
        "mediationRepository",
        "Lcom/unity3d/ads/core/data/repository/MediationRepository;",
        "provideGetInitializationCompletedRequest",
        "Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;",
        "provideGetInitializationRequest",
        "Lcom/unity3d/ads/core/domain/GetInitializationRequest;",
        "getClientInfo",
        "legacyUserConsentRepository",
        "Lcom/unity3d/ads/core/data/repository/LegacyUserConsentRepository;",
        "provideGetOpenGLRendererInfo",
        "provideGetSharedDataTimestamps",
        "provideGetUniversalRequestForPayLoad",
        "getUniversalRequestSharedData",
        "Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;",
        "provideGetUniversalRequestSharedData",
        "developerConsentRepository",
        "Lcom/unity3d/ads/core/data/repository/DeveloperConsentRepository;",
        "provideGetWebViewBridgeUseCase",
        "Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;",
        "provideGetWebViewContainerUseCase",
        "Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;",
        "androidWebViewClient",
        "sendWebViewClientErrorDiagnostics",
        "Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;",
        "provideGlInfoDataStore",
        "fetchGLInfo",
        "provideHandleGatewayAdResponse",
        "Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;",
        "adRepository",
        "getWebViewContainerUseCase",
        "getWebViewBridge",
        "getHandleAndroidInvocationsUseCase",
        "executeAdViewerRequest",
        "operativeEventApi",
        "provideHandleGatewayInitializationResponse",
        "Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;",
        "triggerInitializationCompletedRequest",
        "Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;",
        "sdkScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "provideHandleGatewayUniversalResponse",
        "provideHttpClient",
        "configFileFromLocalStorage",
        "Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;",
        "alternativeFlowReader",
        "Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;",
        "provideIdfiDataMigration",
        "provideIdfiDataStore",
        "idfiMigration",
        "defaultIdfi",
        "provideInitRequestPolicy",
        "provideInitializeBoldSDK",
        "Lcom/unity3d/ads/core/domain/InitializeBoldSDK;",
        "getInitializeRequest",
        "getInitRequestPolicy",
        "handleGatewayInitializationResponse",
        "gatewayClient",
        "eventObservers",
        "Lcom/unity3d/ads/core/domain/events/EventObservers;",
        "triggerInitializeListener",
        "Lcom/unity3d/ads/core/domain/TriggerInitializeListener;",
        "storageManager",
        "Lcom/unity3d/ads/core/data/manager/StorageManager;",
        "sdkPropertiesManager",
        "Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;",
        "provideJsonStorage",
        "Lcom/unity3d/services/core/misc/JsonStorage;",
        "storageType",
        "Lcom/unity3d/services/core/device/StorageManager$StorageType;",
        "provideLegacyLoadUseCase",
        "Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;",
        "dispatcher",
        "load",
        "Lcom/unity3d/ads/core/domain/Load;",
        "provideLegacyShowUseCase",
        "Lcom/unity3d/ads/core/domain/LegacyShowUseCase;",
        "show",
        "Lcom/unity3d/ads/core/domain/Show;",
        "provideLifeCycleCache",
        "provideLoad",
        "getAdRequest",
        "getOtherRequestPolicy",
        "handleGatewayAdResponse",
        "provideMediationDataSource",
        "Lcom/unity3d/ads/core/data/datasource/MediationDataSource;",
        "publicStorage",
        "provideMediationRepository",
        "mediationDataSource",
        "provideOperativeEventObserver",
        "Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;",
        "operativeEventRepository",
        "Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;",
        "provideOperativeEventRequestPolicy",
        "provideOtherRequestPolicy",
        "providePrivacyDeviceInfoDataSource",
        "providePrivacyFsmDataStore",
        "provideRefresh",
        "getAdDataRefreshRequest",
        "getRequestPolicy",
        "provideSDKDispatchers",
        "provideSDKErrorHandler",
        "Lkotlinx/coroutines/CoroutineExceptionHandler;",
        "sdkMetricsSender",
        "Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;",
        "provideSDKMetricSender",
        "provideSDKScope",
        "errorHandler",
        "provideSendWebViewClientErrorDiagnostics",
        "provideSessionRepository",
        "gatewayCacheDataSource",
        "privacyDataSource",
        "privacyFsmDataSource",
        "nativeConfiguration",
        "provideShow",
        "gameServerIdReader",
        "Lcom/unity3d/ads/core/configuration/GameServerIdReader;",
        "provideStaticDeviceInfoDataSource",
        "idfiStore",
        "auidStore",
        "glInfoStore",
        "analyticsDataSource",
        "Lcom/unity3d/ads/core/data/datasource/AnalyticsDataSource;",
        "provideTriggerInitializationCompletedRequest",
        "getInitializationCompletedRequest",
        "provideTriggerInitializeListener",
        "provideUniversalRequestDataSource",
        "LUniversalRequestStoreOuterClass$UniversalRequestStore;",
        "provideUniversalRequestDataStore",
        "provideUserConsentDataStore",
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
.field public static final DATA_STORE_AUID:Ljava/lang/String; = "auid.pb"

.field public static final DATA_STORE_GATEWAY_CACHE:Ljava/lang/String; = "gateway_cache.pb"

.field public static final DATA_STORE_GL_INFO:Ljava/lang/String; = "glinfo.pb"

.field public static final DATA_STORE_IDFI:Ljava/lang/String; = "idfi.pb"

.field public static final DATA_STORE_PRIVACY:Ljava/lang/String; = "privacy.pb"

.field public static final DATA_STORE_PRIVACY_FSM:Ljava/lang/String; = "privacy_fsm.pb"

.field public static final DATA_STORE_UNIVERSAL_REQUEST:Ljava/lang/String; = "universal_request.pb"

.field public static final DEV_CONSENT_PRIVACY_RULES:Ljava/lang/String; = "dev_consent_privacy_rules"

.field public static final GATEWAY_HOST:Ljava/lang/String; = "gateway.unityads.unity3d.com"

.field public static final GATEWAY_PORT:I = 0x1bb

.field public static final HTTP_CACHE_DISK_SIZE:J = 0x500000L

.field public static final HTTP_CLIENT_FETCH_TIMEOUT:J = 0x1f4L

.field public static final INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider;

.field public static final LEGACY_PRIVACY_RULES:Ljava/lang/String; = "legacy_privacy_rules"

.field public static final NAMED_AD_REQ:Ljava/lang/String; = "ad_req"

.field public static final NAMED_INIT_REQ:Ljava/lang/String; = "init_req"

.field public static final NAMED_OPERATIVE_REQ:Ljava/lang/String; = "op_event_req"

.field public static final NAMED_OTHER_REQ:Ljava/lang/String; = "other_req"

.field public static final NAMED_SDK:Ljava/lang/String; = "sdk"

.field public static final PREF_AUID:Ljava/lang/String; = "supersonic_shared_preferen"

.field public static final PREF_DEFAULT:Ljava/lang/String; = "default-migration"

.field public static final PREF_GL_INFO:Ljava/lang/String; = "glinfo"

.field public static final PREF_IDFI:Ljava/lang/String; = "unityads-installinfo"

.field private static final serviceRegistry:Lcom/unity3d/services/core/di/IServicesRegistry;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/unity3d/services/core/di/ServiceProvider;

    invoke-direct {v0}, Lcom/unity3d/services/core/di/ServiceProvider;-><init>()V

    sput-object v0, Lcom/unity3d/services/core/di/ServiceProvider;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider;

    invoke-virtual {v0}, Lcom/unity3d/services/core/di/ServiceProvider;->initialize()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object v0

    sput-object v0, Lcom/unity3d/services/core/di/ServiceProvider;->serviceRegistry:Lcom/unity3d/services/core/di/IServicesRegistry;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$buildNetworkClient(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/services/core/di/ServiceProvider;->buildNetworkClient(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lkotlin/coroutines/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideAdRepository(Lcom/unity3d/services/core/di/ServiceProvider;)Lcom/unity3d/ads/core/data/repository/AdRepository;
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/services/core/di/ServiceProvider;->provideAdRepository()Lcom/unity3d/ads/core/data/repository/AdRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideAdRequestPolicy(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideAdRequestPolicy(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideAndroidWebViewClient(Lcom/unity3d/services/core/di/ServiceProvider;)Lcom/unity3d/ads/adplayer/AndroidWebViewClient;
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/services/core/di/ServiceProvider;->provideAndroidWebViewClient()Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideAuidDataMigration(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;)Landroidx/datastore/core/DataMigration;
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideAuidDataMigration(Landroid/content/Context;)Landroidx/datastore/core/DataMigration;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideAuidDataStore(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroidx/datastore/core/DataMigration;)Landroidx/datastore/core/DataStore;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/services/core/di/ServiceProvider;->provideAuidDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroidx/datastore/core/DataMigration;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideByteStringDataSource(Lcom/unity3d/services/core/di/ServiceProvider;Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideByteStringDataSource(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideCampaignStateRepository(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;)Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideCampaignStateRepository(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;)Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideDefaultDataMigration(Lcom/unity3d/services/core/di/ServiceProvider;)Landroidx/datastore/core/DataMigration;
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/services/core/di/ServiceProvider;->provideDefaultDataMigration()Landroidx/datastore/core/DataMigration;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideDefaultNativeConfiguration(Lcom/unity3d/services/core/di/ServiceProvider;)Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/services/core/di/ServiceProvider;->provideDefaultNativeConfiguration()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideDeviceInfoRepository(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;)Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/services/core/di/ServiceProvider;->provideDeviceInfoRepository(Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;)Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideDiagnosticEventObserver(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventBatchRequest;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;Lcom/unity3d/ads/core/domain/work/BackgroundWorker;)Lcom/unity3d/ads/core/domain/events/DiagnosticEventObserver;
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/unity3d/services/core/di/ServiceProvider;->provideDiagnosticEventObserver(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventBatchRequest;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;Lcom/unity3d/ads/core/domain/work/BackgroundWorker;)Lcom/unity3d/ads/core/domain/events/DiagnosticEventObserver;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideDynamicDeviceInfoDataSource(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;Lcom/unity3d/services/core/lifecycle/LifecycleCache;)Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->provideDynamicDeviceInfoDataSource(Landroid/content/Context;Lcom/unity3d/services/core/lifecycle/LifecycleCache;)Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideExecuteAdViewerRequest(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/services/core/network/core/HttpClient;)Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->provideExecuteAdViewerRequest(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/services/core/network/core/HttpClient;)Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideFetchGLInfoDataMigration(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetOpenGLRendererInfo;)Landroidx/datastore/core/DataMigration;
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideFetchGLInfoDataMigration(Lcom/unity3d/ads/core/domain/GetOpenGLRendererInfo;)Landroidx/datastore/core/DataMigration;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGatewayCacheDataStore(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGatewayCacheDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGatewayClient(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/network/core/HttpClient;Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)Lcom/unity3d/ads/gatewayclient/GatewayClient;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGatewayClient(Lcom/unity3d/services/core/network/core/HttpClient;Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)Lcom/unity3d/ads/gatewayclient/GatewayClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetAdDataRefreshRequest(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;)Lcom/unity3d/ads/core/domain/GetAdDataRefreshRequest;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetAdDataRefreshRequest(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;)Lcom/unity3d/ads/core/domain/GetAdDataRefreshRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetAdRequest(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;)Lcom/unity3d/ads/core/domain/GetAdRequest;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetAdRequest(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;)Lcom/unity3d/ads/core/domain/GetAdRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetAndroidExposureUseCase(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/domain/Refresh;Lcom/unity3d/ads/core/domain/HandleOpenUrl;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetAndroidExposureUseCase(Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/domain/Refresh;Lcom/unity3d/ads/core/domain/HandleOpenUrl;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetClientInfo(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/MediationRepository;)Lcom/unity3d/ads/core/domain/GetClientInfo;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetClientInfo(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/MediationRepository;)Lcom/unity3d/ads/core/domain/GetClientInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetInitializationCompletedRequest(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetInitializationCompletedRequest(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetInitializationRequest(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/domain/GetClientInfo;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/LegacyUserConsentRepository;)Lcom/unity3d/ads/core/domain/GetInitializationRequest;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetInitializationRequest(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/domain/GetClientInfo;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/LegacyUserConsentRepository;)Lcom/unity3d/ads/core/domain/GetInitializationRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetOpenGLRendererInfo(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetOpenGLRendererInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetOpenGLRendererInfo(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetOpenGLRendererInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetSharedDataTimestamps(Lcom/unity3d/services/core/di/ServiceProvider;)Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetSharedDataTimestamps()Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetUniversalRequestForPayLoad(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;)Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetUniversalRequestForPayLoad(Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;)Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetUniversalRequestSharedData(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/DeveloperConsentRepository;)Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetUniversalRequestSharedData(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/DeveloperConsentRepository;)Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetWebViewBridgeUseCase(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetWebViewBridgeUseCase(Lcom/unity3d/services/core/domain/ISDKDispatchers;)Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGetWebViewContainerUseCase(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;)Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGetWebViewContainerUseCase(Landroid/content/Context;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;)Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideGlInfoDataStore(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroidx/datastore/core/DataMigration;)Landroidx/datastore/core/DataStore;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/services/core/di/ServiceProvider;->provideGlInfoDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroidx/datastore/core/DataMigration;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideHandleGatewayAdResponse(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;)Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;
    .registers 12

    invoke-direct/range {p0 .. p11}, Lcom/unity3d/services/core/di/ServiceProvider;->provideHandleGatewayAdResponse(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;)Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideHandleGatewayInitializationResponse(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lkotlinx/coroutines/s;)Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/services/core/di/ServiceProvider;->provideHandleGatewayInitializationResponse(Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lkotlinx/coroutines/s;)Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideHandleGatewayUniversalResponse(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->provideHandleGatewayUniversalResponse(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideHttpClient(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Landroid/content/Context;)Lcom/unity3d/services/core/network/core/HttpClient;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/unity3d/services/core/di/ServiceProvider;->provideHttpClient(Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Landroid/content/Context;)Lcom/unity3d/services/core/network/core/HttpClient;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideIdfiDataMigration(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;)Landroidx/datastore/core/DataMigration;
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideIdfiDataMigration(Landroid/content/Context;)Landroidx/datastore/core/DataMigration;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideIdfiDataStore(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroidx/datastore/core/DataMigration;Landroidx/datastore/core/DataMigration;)Landroidx/datastore/core/DataStore;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/services/core/di/ServiceProvider;->provideIdfiDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroidx/datastore/core/DataMigration;Landroidx/datastore/core/DataMigration;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideInitRequestPolicy(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideInitRequestPolicy(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideInitializeBoldSDK(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/GetInitializationRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/events/EventObservers;Lcom/unity3d/ads/core/domain/TriggerInitializeListener;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/manager/StorageManager;Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;)Lcom/unity3d/ads/core/domain/InitializeBoldSDK;
    .registers 14

    invoke-direct/range {p0 .. p13}, Lcom/unity3d/services/core/di/ServiceProvider;->provideInitializeBoldSDK(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/GetInitializationRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/events/EventObservers;Lcom/unity3d/ads/core/domain/TriggerInitializeListener;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/manager/StorageManager;Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;)Lcom/unity3d/ads/core/domain/InitializeBoldSDK;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideJsonStorage(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/device/StorageManager$StorageType;)Lcom/unity3d/services/core/misc/JsonStorage;
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideJsonStorage(Lcom/unity3d/services/core/device/StorageManager$StorageType;)Lcom/unity3d/services/core/misc/JsonStorage;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideLegacyLoadUseCase(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/Load;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/unity3d/services/core/di/ServiceProvider;->provideLegacyLoadUseCase(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/Load;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideLegacyShowUseCase(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/Show;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/LegacyShowUseCase;
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/unity3d/services/core/di/ServiceProvider;->provideLegacyShowUseCase(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/Show;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/LegacyShowUseCase;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideLifeCycleCache(Lcom/unity3d/services/core/di/ServiceProvider;)Lcom/unity3d/services/core/lifecycle/LifecycleCache;
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/services/core/di/ServiceProvider;->provideLifeCycleCache()Lcom/unity3d/services/core/lifecycle/LifecycleCache;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideLoad(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/GetAdRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/AdRepository;)Lcom/unity3d/ads/core/domain/Load;
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/unity3d/services/core/di/ServiceProvider;->provideLoad(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/GetAdRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/AdRepository;)Lcom/unity3d/ads/core/domain/Load;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideMediationDataSource(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/misc/JsonStorage;)Lcom/unity3d/ads/core/data/datasource/MediationDataSource;
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideMediationDataSource(Lcom/unity3d/services/core/misc/JsonStorage;)Lcom/unity3d/ads/core/data/datasource/MediationDataSource;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideMediationRepository(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/datasource/MediationDataSource;)Lcom/unity3d/ads/core/data/repository/MediationRepository;
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideMediationRepository(Lcom/unity3d/ads/core/data/datasource/MediationDataSource;)Lcom/unity3d/ads/core/data/repository/MediationRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideOperativeEventObserver(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;Lcom/unity3d/ads/core/domain/work/BackgroundWorker;)Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/unity3d/services/core/di/ServiceProvider;->provideOperativeEventObserver(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;Lcom/unity3d/ads/core/domain/work/BackgroundWorker;)Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideOperativeEventRequestPolicy(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideOperativeEventRequestPolicy(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideOtherRequestPolicy(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideOtherRequestPolicy(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$providePrivacyDeviceInfoDataSource(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;)Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->providePrivacyDeviceInfoDataSource(Landroid/content/Context;)Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$providePrivacyFsmDataStore(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->providePrivacyFsmDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideRefresh(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/GetAdDataRefreshRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/gatewayclient/GatewayClient;)Lcom/unity3d/ads/core/domain/Refresh;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/services/core/di/ServiceProvider;->provideRefresh(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/GetAdDataRefreshRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/gatewayclient/GatewayClient;)Lcom/unity3d/ads/core/domain/Refresh;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideSDKDispatchers(Lcom/unity3d/services/core/di/ServiceProvider;)Lcom/unity3d/services/core/domain/ISDKDispatchers;
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/services/core/di/ServiceProvider;->provideSDKDispatchers()Lcom/unity3d/services/core/domain/ISDKDispatchers;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideSDKErrorHandler(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;)Lkotlinx/coroutines/CoroutineExceptionHandler;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/services/core/di/ServiceProvider;->provideSDKErrorHandler(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;)Lkotlinx/coroutines/CoroutineExceptionHandler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideSDKMetricSender(Lcom/unity3d/services/core/di/ServiceProvider;)Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/services/core/di/ServiceProvider;->provideSDKMetricSender()Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideSDKScope(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lkotlinx/coroutines/CoroutineExceptionHandler;)Lkotlinx/coroutines/s;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->provideSDKScope(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lkotlinx/coroutines/CoroutineExceptionHandler;)Lkotlinx/coroutines/s;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideSendWebViewClientErrorDiagnostics(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->provideSendWebViewClientErrorDiagnostics(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideSessionRepository(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/unity3d/services/core/di/ServiceProvider;->provideSessionRepository(Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)Lcom/unity3d/ads/core/data/repository/SessionRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideShow(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/configuration/GameServerIdReader;)Lcom/unity3d/ads/core/domain/Show;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->provideShow(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/configuration/GameServerIdReader;)Lcom/unity3d/ads/core/domain/Show;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideStaticDeviceInfoDataSource(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/AnalyticsDataSource;)Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/unity3d/services/core/di/ServiceProvider;->provideStaticDeviceInfoDataSource(Landroid/content/Context;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/AnalyticsDataSource;)Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideTriggerInitializationCompletedRequest(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/gatewayclient/GatewayClient;)Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/unity3d/services/core/di/ServiceProvider;->provideTriggerInitializationCompletedRequest(Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/gatewayclient/GatewayClient;)Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideTriggerInitializeListener(Lcom/unity3d/services/core/di/ServiceProvider;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Lcom/unity3d/ads/core/domain/TriggerInitializeListener;
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideTriggerInitializeListener(Lcom/unity3d/services/core/domain/ISDKDispatchers;)Lcom/unity3d/ads/core/domain/TriggerInitializeListener;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideUniversalRequestDataSource(Lcom/unity3d/services/core/di/ServiceProvider;Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/services/core/di/ServiceProvider;->provideUniversalRequestDataSource(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideUniversalRequestDataStore(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->provideUniversalRequestDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$provideUserConsentDataStore(Lcom/unity3d/services/core/di/ServiceProvider;Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/unity3d/services/core/di/ServiceProvider;->provideUserConsentDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;

    move-result-object p0

    return-object p0
.end method

.method private final buildNetworkClient(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lkotlin/coroutines/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
            "Lkotlin/coroutines/d<",
            "-",
            "Lcom/unity3d/services/core/network/core/HttpClient;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/i;

    invoke-static {p3}, Lkotlin/coroutines/intrinsics/a;->intercepted(Lkotlin/coroutines/d;)Lkotlin/coroutines/d;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/i;-><init>(Lkotlin/coroutines/d;I)V

    invoke-virtual {v0}, Lkotlinx/coroutines/i;->E()V

    invoke-static {p1}, Lcom/google/android/gms/net/CronetProviderInstaller;->installProvider(Landroid/content/Context;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    new-instance v2, Lcom/unity3d/services/core/di/ServiceProvider$buildNetworkClient$2$1;

    invoke-direct {v2, p1, v0, p2}, Lcom/unity3d/services/core/di/ServiceProvider$buildNetworkClient$2$1;-><init>(Landroid/content/Context;Lkotlinx/coroutines/CancellableContinuation;Lcom/unity3d/services/core/domain/ISDKDispatchers;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    invoke-virtual {v0}, Lkotlinx/coroutines/i;->y()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_26

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->probeCoroutineSuspended(Lkotlin/coroutines/d;)V

    :cond_26
    return-object p1
.end method

.method private final getDefaultRequestPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;
    .registers 4

    sget-object v0, Lgateway/v1/j0;->a:Lgateway/v1/j0$a;

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;->newBuilder()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgateway/v1/j0$a;->a(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy$a;)Lgateway/v1/j0;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/di/ServiceProvider;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider;

    invoke-direct {v1}, Lcom/unity3d/services/core/di/ServiceProvider;->getDefaultRequestRetryPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgateway/v1/j0;->b(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;)V

    invoke-direct {v1}, Lcom/unity3d/services/core/di/ServiceProvider;->getDefaultRequestTimeoutPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgateway/v1/j0;->c(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;)V

    invoke-virtual {v0}, Lgateway/v1/j0;->a()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v0

    return-object v0
.end method

.method private final getDefaultRequestRetryPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;
    .registers 4

    sget-object v0, Lgateway/v1/k0;->a:Lgateway/v1/k0$a;

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;->newBuilder()Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgateway/v1/k0$a;->a(Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy$a;)Lgateway/v1/k0;

    move-result-object v0

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lgateway/v1/k0;->b(I)V

    invoke-virtual {v0, v1}, Lgateway/v1/k0;->d(I)V

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Lgateway/v1/k0;->c(F)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgateway/v1/k0;->e(Z)V

    invoke-virtual {v0}, Lgateway/v1/k0;->a()Lgateway/v1/NativeConfigurationOuterClass$RequestRetryPolicy;

    move-result-object v0

    return-object v0
.end method

.method private final getDefaultRequestTimeoutPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;
    .registers 4

    sget-object v0, Lgateway/v1/l0;->a:Lgateway/v1/l0$a;

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;->newBuilder()Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$a;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgateway/v1/l0$a;->a(Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy$a;)Lgateway/v1/l0;

    move-result-object v0

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lgateway/v1/l0;->b(I)V

    invoke-virtual {v0, v1}, Lgateway/v1/l0;->c(I)V

    invoke-virtual {v0, v1}, Lgateway/v1/l0;->d(I)V

    invoke-virtual {v0}, Lgateway/v1/l0;->a()Lgateway/v1/NativeConfigurationOuterClass$RequestTimeoutPolicy;

    move-result-object v0

    return-object v0
.end method

.method private final provideAdRepository()Lcom/unity3d/ads/core/data/repository/AdRepository;
    .registers 2

    new-instance v0, Lcom/unity3d/ads/core/data/repository/AndroidAdRepository;

    invoke-direct {v0}, Lcom/unity3d/ads/core/data/repository/AndroidAdRepository;-><init>()V

    return-object v0
.end method

.method private final provideAdRequestPolicy(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .registers 3

    new-instance v0, Lcom/unity3d/ads/core/domain/GetAdRequestPolicy;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/GetAdRequestPolicy;-><init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V

    return-object v0
.end method

.method private final provideAndroidWebViewClient()Lcom/unity3d/ads/adplayer/AndroidWebViewClient;
    .registers 2

    new-instance v0, Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    invoke-direct {v0}, Lcom/unity3d/ads/adplayer/AndroidWebViewClient;-><init>()V

    return-object v0
.end method

.method private final provideAuidDataMigration(Landroid/content/Context;)Landroidx/datastore/core/DataMigration;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/datastore/core/DataMigration<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/unity3d/ads/core/data/datasource/ForcefulPreservingByteStringPreferenceMigration;

    new-instance v1, Lcom/unity3d/ads/core/data/datasource/GetAuidData;

    invoke-direct {v1}, Lcom/unity3d/ads/core/data/datasource/GetAuidData;-><init>()V

    const-string v2, "supersonic_shared_preferen"

    const-string v3, "auid"

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/unity3d/ads/core/data/datasource/ForcefulPreservingByteStringPreferenceMigration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/datasource/GetByteStringData;)V

    return-object v0
.end method

.method private final provideAuidDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroidx/datastore/core/DataMigration;)Landroidx/datastore/core/DataStore;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
            "Landroidx/datastore/core/DataMigration<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;)",
            "Landroidx/datastore/core/DataStore<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/datastore/core/DataStoreFactory;->INSTANCE:Landroidx/datastore/core/DataStoreFactory;

    new-instance v1, Lcom/unity3d/ads/core/data/model/ByteStringSerializer;

    invoke-direct {v1}, Lcom/unity3d/ads/core/data/model/ByteStringSerializer;-><init>()V

    invoke-static {p3}, Lkotlin/collections/p;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v2, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    sget-object p3, Lcom/unity3d/services/core/di/ServiceProvider$provideAuidDataStore$1;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$provideAuidDataStore$1;

    invoke-direct {v2, p3}, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;-><init>(Lkotlin/jvm/b/l;)V

    invoke-interface {p2}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getIo()Lkotlinx/coroutines/r;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v4, 0x1

    invoke-static {p3, v4, p3}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p3

    invoke-virtual {p2, p3}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s;

    move-result-object v4

    new-instance v5, Lcom/unity3d/services/core/di/ServiceProvider$provideAuidDataStore$2;

    invoke-direct {v5, p1}, Lcom/unity3d/services/core/di/ServiceProvider$provideAuidDataStore$2;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/core/DataStoreFactory;->create(Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/s;Lkotlin/jvm/b/a;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    return-object p1
.end method

.method private final provideByteStringDataSource(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataStore<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;)",
            "Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;"
        }
    .end annotation

    new-instance v0, Lcom/unity3d/ads/core/data/datasource/AndroidByteStringDataSource;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/data/datasource/AndroidByteStringDataSource;-><init>(Landroidx/datastore/core/DataStore;)V

    return-object v0
.end method

.method private final provideByteStringDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Ljava/lang/String;)Landroidx/datastore/core/DataStore;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/datastore/core/DataStoreFactory;->INSTANCE:Landroidx/datastore/core/DataStoreFactory;

    new-instance v1, Lcom/unity3d/ads/core/data/model/ByteStringSerializer;

    invoke-direct {v1}, Lcom/unity3d/ads/core/data/model/ByteStringSerializer;-><init>()V

    invoke-interface {p2}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getIo()Lkotlinx/coroutines/r;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3, v2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v2

    invoke-virtual {p2, v2}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s;

    move-result-object v4

    new-instance v5, Lcom/unity3d/services/core/di/ServiceProvider$provideByteStringDataStore$1;

    invoke-direct {v5, p1, p3}, Lcom/unity3d/services/core/di/ServiceProvider$provideByteStringDataStore$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/datastore/core/DataStoreFactory;->create$default(Landroidx/datastore/core/DataStoreFactory;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/s;Lkotlin/jvm/b/a;ILjava/lang/Object;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    return-object p1
.end method

.method private final provideCampaignStateRepository(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;)Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;
    .registers 3

    new-instance v0, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/data/repository/AndroidCampaignStateRepository;-><init>(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;)V

    return-object v0
.end method

.method private final provideDefaultDataMigration()Landroidx/datastore/core/DataMigration;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/core/DataMigration<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/unity3d/ads/core/data/datasource/DefaultByteStringMigration;

    new-instance v1, Lcom/unity3d/ads/core/data/datasource/GetIdfiData;

    invoke-direct {v1}, Lcom/unity3d/ads/core/data/datasource/GetIdfiData;-><init>()V

    const-string v2, "unityads-installinfo"

    const-string v3, "unityads-idfi"

    invoke-direct {v0, v2, v3, v1}, Lcom/unity3d/ads/core/data/datasource/DefaultByteStringMigration;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/datasource/GetPreferenceString;)V

    return-object v0
.end method

.method private final provideDefaultNativeConfiguration()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .registers 5

    sget-object v0, Lgateway/v1/c0;->a:Lgateway/v1/c0$a;

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;->newBuilder()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgateway/v1/c0$a;->a(Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration$a;)Lgateway/v1/c0;

    move-result-object v0

    sget-object v1, Lcom/unity3d/services/core/di/ServiceProvider;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider;

    invoke-direct {v1}, Lcom/unity3d/services/core/di/ServiceProvider;->getDefaultRequestPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgateway/v1/c0;->d(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    invoke-direct {v1}, Lcom/unity3d/services/core/di/ServiceProvider;->getDefaultRequestPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgateway/v1/c0;->b(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    invoke-direct {v1}, Lcom/unity3d/services/core/di/ServiceProvider;->getDefaultRequestPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v3

    invoke-virtual {v0, v3}, Lgateway/v1/c0;->f(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    invoke-direct {v1}, Lcom/unity3d/services/core/di/ServiceProvider;->getDefaultRequestPolicy()Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgateway/v1/c0;->e(Lgateway/v1/NativeConfigurationOuterClass$RequestPolicy;)V

    sget-object v1, Lgateway/v1/p;->a:Lgateway/v1/p$a;

    invoke-static {}, Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;->newBuilder()Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lgateway/v1/p$a;->a(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration$c;)Lgateway/v1/p;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lgateway/v1/p;->b(Z)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lgateway/v1/p;->d(I)V

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Lgateway/v1/p;->c(I)V

    invoke-virtual {v1, v2}, Lgateway/v1/p;->e(Z)V

    invoke-virtual {v1}, Lgateway/v1/p;->a()Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgateway/v1/c0;->c(Lgateway/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V

    invoke-virtual {v0}, Lgateway/v1/c0;->a()Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;

    move-result-object v0

    return-object v0
.end method

.method private final provideDeviceInfoRepository(Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;)Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;
    .registers 5

    new-instance v0, Lcom/unity3d/ads/core/data/repository/AndroidDeviceInfoRepository;

    invoke-direct {v0, p1, p2, p3}, Lcom/unity3d/ads/core/data/repository/AndroidDeviceInfoRepository;-><init>(Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;)V

    return-object v0
.end method

.method private final provideDiagnosticEventObserver(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventBatchRequest;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;Lcom/unity3d/ads/core/domain/work/BackgroundWorker;)Lcom/unity3d/ads/core/domain/events/DiagnosticEventObserver;
    .registers 15

    new-instance v7, Lcom/unity3d/ads/core/domain/events/DiagnosticEventObserver;

    invoke-interface {p3}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lkotlinx/coroutines/r;

    move-result-object v3

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/core/domain/events/DiagnosticEventObserver;-><init>(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/domain/events/GetDiagnosticEventBatchRequest;Lkotlinx/coroutines/r;Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;Lcom/unity3d/ads/core/domain/work/BackgroundWorker;)V

    return-object v7
.end method

.method private final provideDynamicDeviceInfoDataSource(Landroid/content/Context;Lcom/unity3d/services/core/lifecycle/LifecycleCache;)Lcom/unity3d/ads/core/data/datasource/DynamicDeviceInfoDataSource;
    .registers 4

    new-instance v0, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;

    invoke-direct {v0, p1, p2}, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;-><init>(Landroid/content/Context;Lcom/unity3d/services/core/lifecycle/LifecycleCache;)V

    return-object v0
.end method

.method private final provideExecuteAdViewerRequest(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/services/core/network/core/HttpClient;)Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;
    .registers 4

    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest;

    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getIo()Lkotlinx/coroutines/r;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidExecuteAdViewerRequest;-><init>(Lkotlinx/coroutines/r;Lcom/unity3d/services/core/network/core/HttpClient;)V

    return-object v0
.end method

.method private final provideFetchGLInfoDataMigration(Lcom/unity3d/ads/core/domain/GetOpenGLRendererInfo;)Landroidx/datastore/core/DataMigration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/domain/GetOpenGLRendererInfo;",
            ")",
            "Landroidx/datastore/core/DataMigration<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/unity3d/ads/core/data/datasource/FetchGLInfoDataMigration;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/data/datasource/FetchGLInfoDataMigration;-><init>(Lcom/unity3d/ads/core/domain/GetOpenGLRendererInfo;)V

    return-object v0
.end method

.method private final provideGatewayCacheDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    const-string v0, "gateway_cache.pb"

    invoke-direct {p0, p1, p2, v0}, Lcom/unity3d/services/core/di/ServiceProvider;->provideByteStringDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Ljava/lang/String;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    return-object p1
.end method

.method private final provideGatewayClient(Lcom/unity3d/services/core/network/core/HttpClient;Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)Lcom/unity3d/ads/gatewayclient/GatewayClient;
    .registers 5

    new-instance v0, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;

    invoke-direct {v0, p1, p2, p3}, Lcom/unity3d/ads/gatewayclient/CommonGatewayClient;-><init>(Lcom/unity3d/services/core/network/core/HttpClient;Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V

    return-object v0
.end method

.method private final provideGetAdDataRefreshRequest(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;)Lcom/unity3d/ads/core/domain/GetAdDataRefreshRequest;
    .registers 6

    new-instance v0, Lcom/unity3d/ads/core/domain/GetAndroidAdDataRefreshRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/domain/GetAndroidAdDataRefreshRequest;-><init>(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;)V

    return-object v0
.end method

.method private final provideGetAdRequest(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;)Lcom/unity3d/ads/core/domain/GetAdRequest;
    .registers 6

    new-instance v0, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/domain/GetAndroidAdRequest;-><init>(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;)V

    return-object v0
.end method

.method private final provideGetAndroidExposureUseCase(Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/domain/Refresh;Lcom/unity3d/ads/core/domain/HandleOpenUrl;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;
    .registers 21

    new-instance v10, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;-><init>(Lcom/unity3d/ads/core/domain/GetAndroidAdPlayerContext;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/domain/Refresh;Lcom/unity3d/ads/core/domain/HandleOpenUrl;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;Lcom/unity3d/ads/core/domain/SendPrivacyUpdateRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V

    return-object v10
.end method

.method private final provideGetClientInfo(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/MediationRepository;)Lcom/unity3d/ads/core/domain/GetClientInfo;
    .registers 4

    new-instance v0, Lcom/unity3d/ads/core/domain/GetAndroidClientInfo;

    invoke-direct {v0, p1, p2}, Lcom/unity3d/ads/core/domain/GetAndroidClientInfo;-><init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/MediationRepository;)V

    return-object v0
.end method

.method private final provideGetInitializationCompletedRequest(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;
    .registers 4

    new-instance v0, Lcom/unity3d/ads/core/domain/GetAndroidInitializationCompletedRequest;

    invoke-direct {v0, p1, p2}, Lcom/unity3d/ads/core/domain/GetAndroidInitializationCompletedRequest;-><init>(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)V

    return-object v0
.end method

.method private final provideGetInitializationRequest(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/domain/GetClientInfo;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/LegacyUserConsentRepository;)Lcom/unity3d/ads/core/domain/GetInitializationRequest;
    .registers 13

    new-instance v6, Lcom/unity3d/ads/core/domain/GetAndroidInitializationRequest;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/GetAndroidInitializationRequest;-><init>(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/ads/core/domain/GetClientInfo;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/LegacyUserConsentRepository;)V

    return-object v6
.end method

.method private final provideGetOpenGLRendererInfo(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetOpenGLRendererInfo;
    .registers 3

    new-instance v0, Lcom/unity3d/ads/core/domain/GetAndroidOpenGLRendererInfo;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/GetAndroidOpenGLRendererInfo;-><init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V

    return-object v0
.end method

.method private final provideGetSharedDataTimestamps()Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;
    .registers 2

    new-instance v0, Lcom/unity3d/ads/core/domain/GetAndroidSharedDataTimestamps;

    invoke-direct {v0}, Lcom/unity3d/ads/core/domain/GetAndroidSharedDataTimestamps;-><init>()V

    return-object v0
.end method

.method private final provideGetUniversalRequestForPayLoad(Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;)Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;
    .registers 3

    new-instance v0, Lcom/unity3d/ads/core/domain/GetAndroidUniversalRequestForPayLoad;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/GetAndroidUniversalRequestForPayLoad;-><init>(Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;)V

    return-object v0
.end method

.method private final provideGetUniversalRequestSharedData(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/DeveloperConsentRepository;)Lcom/unity3d/ads/core/domain/GetUniversalRequestSharedData;
    .registers 6

    new-instance v0, Lcom/unity3d/ads/core/domain/GetAndroidUniversalRequestSharedData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/domain/GetAndroidUniversalRequestSharedData;-><init>(Lcom/unity3d/ads/core/domain/GetSharedDataTimestamps;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/DeveloperConsentRepository;)V

    return-object v0
.end method

.method private final provideGetWebViewBridgeUseCase(Lcom/unity3d/services/core/domain/ISDKDispatchers;)Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;
    .registers 3

    new-instance v0, Lcom/unity3d/ads/core/domain/GetCommonWebViewBridgeUseCase;

    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lkotlinx/coroutines/r;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/GetCommonWebViewBridgeUseCase;-><init>(Lkotlinx/coroutines/r;)V

    return-object v0
.end method

.method private final provideGetWebViewContainerUseCase(Landroid/content/Context;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;)Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;
    .registers 5

    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;

    invoke-direct {v0, p1, p2, p3}, Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;-><init>(Landroid/content/Context;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;)V

    return-object v0
.end method

.method private final provideGlInfoDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroidx/datastore/core/DataMigration;)Landroidx/datastore/core/DataStore;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
            "Landroidx/datastore/core/DataMigration<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;)",
            "Landroidx/datastore/core/DataStore<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/datastore/core/DataStoreFactory;->INSTANCE:Landroidx/datastore/core/DataStoreFactory;

    new-instance v1, Lcom/unity3d/ads/core/data/model/ByteStringSerializer;

    invoke-direct {v1}, Lcom/unity3d/ads/core/data/model/ByteStringSerializer;-><init>()V

    invoke-static {p3}, Lkotlin/collections/p;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p2}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getIo()Lkotlinx/coroutines/r;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v2, 0x1

    invoke-static {p3, v2, p3}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p3

    invoke-virtual {p2, p3}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s;

    move-result-object v4

    new-instance v5, Lcom/unity3d/services/core/di/ServiceProvider$provideGlInfoDataStore$1;

    invoke-direct {v5, p1}, Lcom/unity3d/services/core/di/ServiceProvider$provideGlInfoDataStore$1;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/datastore/core/DataStoreFactory;->create$default(Landroidx/datastore/core/DataStoreFactory;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/s;Lkotlin/jvm/b/a;ILjava/lang/Object;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    return-object p1
.end method

.method private final provideHandleGatewayAdResponse(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;)Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;
    .registers 25

    new-instance v12, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;

    invoke-interface/range {p4 .. p4}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lkotlinx/coroutines/r;

    move-result-object v4

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/unity3d/ads/core/domain/HandleGatewayAndroidAdResponse;-><init>(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/AndroidGetWebViewContainerUseCase;Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;Lkotlinx/coroutines/r;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/domain/HandleAndroidInvocationsUseCase;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/CampaignStateRepository;Lcom/unity3d/ads/core/domain/ExecuteAdViewerRequest;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;)V

    return-object v12
.end method

.method private final provideHandleGatewayInitializationResponse(Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lkotlinx/coroutines/s;)Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;
    .registers 5

    new-instance v0, Lcom/unity3d/ads/core/domain/HandleAndroidGatewayInitializationResponse;

    invoke-direct {v0, p1, p2, p3}, Lcom/unity3d/ads/core/domain/HandleAndroidGatewayInitializationResponse;-><init>(Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lkotlinx/coroutines/s;)V

    return-object v0
.end method

.method private final provideHandleGatewayUniversalResponse(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)Lcom/unity3d/ads/core/domain/HandleGatewayUniversalResponse;
    .registers 4

    new-instance v0, Lcom/unity3d/ads/core/domain/HandleAndroidGatewayUniversalResponse;

    invoke-direct {v0, p1, p2}, Lcom/unity3d/ads/core/domain/HandleAndroidGatewayUniversalResponse;-><init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;)V

    return-object v0
.end method

.method private final provideHttpClient(Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Landroid/content/Context;)Lcom/unity3d/services/core/network/core/HttpClient;
    .registers 14

    new-instance v7, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p2

    move-object v2, p4

    move-object v3, p3

    move-object v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/services/core/di/ServiceProvider$provideHttpClient$1;-><init>(Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroid/content/Context;Lcom/unity3d/services/core/domain/task/ConfigFileFromLocalStorage;Lkotlin/coroutines/d;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p1, v7, p2, p1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unity3d/services/core/network/core/HttpClient;

    return-object p1
.end method

.method private final provideIdfiDataMigration(Landroid/content/Context;)Landroidx/datastore/core/DataMigration;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroidx/datastore/core/DataMigration<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/unity3d/ads/core/data/datasource/PreservingByteStringPreferenceMigration;

    new-instance v1, Lcom/unity3d/ads/core/data/datasource/GetIdfiData;

    invoke-direct {v1}, Lcom/unity3d/ads/core/data/datasource/GetIdfiData;-><init>()V

    const-string v2, "unityads-installinfo"

    const-string v3, "unityads-idfi"

    invoke-direct {v0, p1, v2, v3, v1}, Lcom/unity3d/ads/core/data/datasource/PreservingByteStringPreferenceMigration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/datasource/GetByteStringData;)V

    return-object v0
.end method

.method private final provideIdfiDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Landroidx/datastore/core/DataMigration;Landroidx/datastore/core/DataMigration;)Landroidx/datastore/core/DataStore;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
            "Landroidx/datastore/core/DataMigration<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;",
            "Landroidx/datastore/core/DataMigration<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;)",
            "Landroidx/datastore/core/DataStore<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/datastore/core/DataStoreFactory;->INSTANCE:Landroidx/datastore/core/DataStoreFactory;

    new-instance v1, Lcom/unity3d/ads/core/data/model/ByteStringSerializer;

    invoke-direct {v1}, Lcom/unity3d/ads/core/data/model/ByteStringSerializer;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/datastore/core/DataMigration;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 p3, 0x1

    aput-object p4, v2, p3

    invoke-static {v2}, Lkotlin/collections/p;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v2, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    sget-object p4, Lcom/unity3d/services/core/di/ServiceProvider$provideIdfiDataStore$1;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$provideIdfiDataStore$1;

    invoke-direct {v2, p4}, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;-><init>(Lkotlin/jvm/b/l;)V

    invoke-interface {p2}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getIo()Lkotlinx/coroutines/r;

    move-result-object p2

    const/4 p4, 0x0

    invoke-static {p4, p3, p4}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p3

    invoke-virtual {p2, p3}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s;

    move-result-object v4

    new-instance v5, Lcom/unity3d/services/core/di/ServiceProvider$provideIdfiDataStore$2;

    invoke-direct {v5, p1}, Lcom/unity3d/services/core/di/ServiceProvider$provideIdfiDataStore$2;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/core/DataStoreFactory;->create(Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/s;Lkotlin/jvm/b/a;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    return-object p1
.end method

.method private final provideInitRequestPolicy(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .registers 3

    new-instance v0, Lcom/unity3d/ads/core/domain/GetInitRequestPolicy;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/GetInitRequestPolicy;-><init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V

    return-object v0
.end method

.method private final provideInitializeBoldSDK(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/GetInitializationRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/events/EventObservers;Lcom/unity3d/ads/core/domain/TriggerInitializeListener;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/manager/StorageManager;Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;)Lcom/unity3d/ads/core/domain/InitializeBoldSDK;
    .registers 29

    new-instance v14, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;

    invoke-interface/range {p1 .. p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lkotlinx/coroutines/r;

    move-result-object v1

    move-object v0, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/unity3d/ads/core/domain/InitializeAndroidBoldSDK;-><init>(Lkotlinx/coroutines/r;Lcom/unity3d/ads/core/domain/GetInitializationRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/events/EventObservers;Lcom/unity3d/ads/core/domain/TriggerInitializeListener;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/manager/StorageManager;Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;)V

    return-object v14
.end method

.method private final provideJsonStorage(Lcom/unity3d/services/core/device/StorageManager$StorageType;)Lcom/unity3d/services/core/misc/JsonStorage;
    .registers 3

    invoke-static {}, Lcom/unity3d/services/core/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/services/core/device/StorageManager;->init(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p1}, Lcom/unity3d/services/core/device/StorageManager;->getStorage(Lcom/unity3d/services/core/device/StorageManager$StorageType;)Lcom/unity3d/services/core/device/Storage;

    move-result-object p1

    const-string v0, "getStorage(storageType)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "StorageManager failed to initialize"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final provideLegacyLoadUseCase(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/Load;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;
    .registers 13

    new-instance v6, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;

    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getMain()Lkotlinx/coroutines/r;

    move-result-object v1

    move-object v0, v6

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/LegacyLoadUseCase;-><init>(Lkotlinx/coroutines/r;Lcom/unity3d/ads/core/domain/Load;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/data/repository/AdRepository;)V

    return-object v6
.end method

.method private final provideLegacyShowUseCase(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/Show;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/LegacyShowUseCase;
    .registers 15

    new-instance v7, Lcom/unity3d/ads/core/domain/LegacyShowUseCase;

    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getMain()Lkotlinx/coroutines/r;

    move-result-object v1

    move-object v0, v7

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/unity3d/ads/core/domain/LegacyShowUseCase;-><init>(Lkotlinx/coroutines/r;Lcom/unity3d/ads/core/domain/Show;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/data/repository/SessionRepository;)V

    return-object v7
.end method

.method private final provideLifeCycleCache()Lcom/unity3d/services/core/lifecycle/LifecycleCache;
    .registers 3

    invoke-static {}, Lcom/unity3d/services/core/lifecycle/CachedLifecycle;->getLifecycleListener()Lcom/unity3d/services/core/lifecycle/LifecycleCache;

    move-result-object v0

    const-string v1, "getLifecycleListener()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final provideLoad(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/GetAdRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/AdRepository;)Lcom/unity3d/ads/core/domain/Load;
    .registers 17

    new-instance v8, Lcom/unity3d/ads/core/domain/AndroidLoad;

    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lkotlinx/coroutines/r;

    move-result-object v1

    move-object v0, v8

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/unity3d/ads/core/domain/AndroidLoad;-><init>(Lkotlinx/coroutines/r;Lcom/unity3d/ads/core/domain/GetAdRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/HandleGatewayAdResponse;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/AdRepository;)V

    return-object v8
.end method

.method private final provideMediationDataSource(Lcom/unity3d/services/core/misc/JsonStorage;)Lcom/unity3d/ads/core/data/datasource/MediationDataSource;
    .registers 3

    new-instance v0, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/data/datasource/AndroidMediationDataSource;-><init>(Lcom/unity3d/services/core/misc/JsonStorage;)V

    return-object v0
.end method

.method private final provideMediationRepository(Lcom/unity3d/ads/core/data/datasource/MediationDataSource;)Lcom/unity3d/ads/core/data/repository/MediationRepository;
    .registers 3

    new-instance v0, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/data/repository/AndroidMediationRepository;-><init>(Lcom/unity3d/ads/core/data/datasource/MediationDataSource;)V

    return-object v0
.end method

.method private final provideOperativeEventObserver(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;Lcom/unity3d/ads/core/domain/work/BackgroundWorker;)Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;
    .registers 13

    new-instance v6, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;

    invoke-interface {p2}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lkotlinx/coroutines/r;

    move-result-object v2

    move-object v0, v6

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/domain/events/OperativeEventObserver;-><init>(Lcom/unity3d/ads/core/domain/GetUniversalRequestForPayLoad;Lkotlinx/coroutines/r;Lcom/unity3d/ads/core/data/repository/OperativeEventRepository;Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;Lcom/unity3d/ads/core/domain/work/BackgroundWorker;)V

    return-object v6
.end method

.method private final provideOperativeEventRequestPolicy(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .registers 3

    new-instance v0, Lcom/unity3d/ads/core/domain/GetOperativeEventRequestPolicy;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/GetOperativeEventRequestPolicy;-><init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V

    return-object v0
.end method

.method private final provideOtherRequestPolicy(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/core/domain/GetRequestPolicy;
    .registers 3

    new-instance v0, Lcom/unity3d/ads/core/domain/GetOtherRequestPolicy;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/GetOtherRequestPolicy;-><init>(Lcom/unity3d/ads/core/data/repository/SessionRepository;)V

    return-object v0
.end method

.method private final providePrivacyDeviceInfoDataSource(Landroid/content/Context;)Lcom/unity3d/ads/core/data/datasource/PrivacyDeviceInfoDataSource;
    .registers 3

    new-instance v0, Lcom/unity3d/ads/core/data/datasource/AndroidPrivacyDeviceInfoDataSource;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/data/datasource/AndroidPrivacyDeviceInfoDataSource;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private final providePrivacyFsmDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    const-string v0, "privacy_fsm.pb"

    invoke-direct {p0, p1, p2, v0}, Lcom/unity3d/services/core/di/ServiceProvider;->provideByteStringDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Ljava/lang/String;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    return-object p1
.end method

.method private final provideRefresh(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/GetAdDataRefreshRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/gatewayclient/GatewayClient;)Lcom/unity3d/ads/core/domain/Refresh;
    .registers 6

    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidRefresh;

    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lkotlinx/coroutines/r;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/domain/AndroidRefresh;-><init>(Lkotlinx/coroutines/r;Lcom/unity3d/ads/core/domain/GetAdDataRefreshRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/gatewayclient/GatewayClient;)V

    return-object v0
.end method

.method private final provideSDKDispatchers()Lcom/unity3d/services/core/domain/ISDKDispatchers;
    .registers 2

    new-instance v0, Lcom/unity3d/services/core/domain/SDKDispatchers;

    invoke-direct {v0}, Lcom/unity3d/services/core/domain/SDKDispatchers;-><init>()V

    return-object v0
.end method

.method private final provideSDKErrorHandler(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;)Lkotlinx/coroutines/CoroutineExceptionHandler;
    .registers 6

    new-instance v0, Lcom/unity3d/services/SDKErrorHandler;

    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getIo()Lkotlinx/coroutines/r;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/unity3d/services/SDKErrorHandler;-><init>(Lkotlinx/coroutines/r;Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;)V

    return-object v0
.end method

.method private final provideSDKMetricSender()Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;
    .registers 3

    invoke-static {}, Lcom/unity3d/services/core/request/metrics/SDKMetrics;->getInstance()Lcom/unity3d/services/core/request/metrics/SDKMetricsSender;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private final provideSDKScope(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lkotlinx/coroutines/CoroutineExceptionHandler;)Lkotlinx/coroutines/s;
    .registers 5

    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lkotlinx/coroutines/r;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-interface {p1, p2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s;

    move-result-object p1

    return-object p1
.end method

.method private final provideSendWebViewClientErrorDiagnostics(Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;
    .registers 4

    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;

    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getIo()Lkotlinx/coroutines/r;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidSendWebViewClientErrorDiagnostics;-><init>(Lkotlinx/coroutines/r;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V

    return-object v0
.end method

.method private final provideSessionRepository(Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)Lcom/unity3d/ads/core/data/repository/SessionRepository;
    .registers 6

    new-instance v0, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/unity3d/ads/core/data/repository/AndroidSessionRepository;-><init>(Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lgateway/v1/NativeConfigurationOuterClass$NativeConfiguration;)V

    return-object v0
.end method

.method private final provideShow(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/configuration/GameServerIdReader;)Lcom/unity3d/ads/core/domain/Show;
    .registers 4

    new-instance v0, Lcom/unity3d/ads/core/domain/AndroidShow;

    invoke-direct {v0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidShow;-><init>(Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/configuration/GameServerIdReader;)V

    return-object v0
.end method

.method private final provideStaticDeviceInfoDataSource(Landroid/content/Context;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/AnalyticsDataSource;)Lcom/unity3d/ads/core/data/datasource/StaticDeviceInfoDataSource;
    .registers 13

    new-instance v6, Lcom/unity3d/ads/core/data/datasource/AndroidStaticDeviceInfoDataSource;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/core/data/datasource/AndroidStaticDeviceInfoDataSource;-><init>(Landroid/content/Context;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;Lcom/unity3d/ads/core/data/datasource/AnalyticsDataSource;)V

    return-object v6
.end method

.method private final provideTriggerInitializationCompletedRequest(Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/gatewayclient/GatewayClient;)Lcom/unity3d/ads/core/domain/TriggerInitializationCompletedRequest;
    .registers 5

    new-instance v0, Lcom/unity3d/ads/core/domain/TriggerAndroidInitializationCompletedRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/unity3d/ads/core/domain/TriggerAndroidInitializationCompletedRequest;-><init>(Lcom/unity3d/ads/core/domain/GetInitializationCompletedRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/gatewayclient/GatewayClient;)V

    return-object v0
.end method

.method private final provideTriggerInitializeListener(Lcom/unity3d/services/core/domain/ISDKDispatchers;)Lcom/unity3d/ads/core/domain/TriggerInitializeListener;
    .registers 3

    new-instance v0, Lcom/unity3d/ads/core/domain/TriggerInitializeListener;

    invoke-interface {p1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getMain()Lkotlinx/coroutines/r;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/domain/TriggerInitializeListener;-><init>(Lkotlinx/coroutines/r;)V

    return-object v0
.end method

.method private final provideUniversalRequestDataSource(Landroidx/datastore/core/DataStore;)Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/datastore/core/DataStore<",
            "LUniversalRequestStoreOuterClass$UniversalRequestStore;",
            ">;)",
            "Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;"
        }
    .end annotation

    new-instance v0, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;

    invoke-direct {v0, p1}, Lcom/unity3d/ads/core/data/datasource/UniversalRequestDataSource;-><init>(Landroidx/datastore/core/DataStore;)V

    return-object v0
.end method

.method private final provideUniversalRequestDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "LUniversalRequestStoreOuterClass$UniversalRequestStore;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroidx/datastore/core/DataStoreFactory;->INSTANCE:Landroidx/datastore/core/DataStoreFactory;

    new-instance v1, Lcom/unity3d/ads/core/data/model/UniversalRequestStoreSerializer;

    invoke-direct {v1}, Lcom/unity3d/ads/core/data/model/UniversalRequestStoreSerializer;-><init>()V

    invoke-interface {p2}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getIo()Lkotlinx/coroutines/r;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3, v2}, Lkotlinx/coroutines/SupervisorKt;->SupervisorJob$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object v2

    invoke-virtual {p2, v2}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p2

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/s;

    move-result-object v4

    new-instance v5, Lcom/unity3d/services/core/di/ServiceProvider$provideUniversalRequestDataStore$1;

    invoke-direct {v5, p1}, Lcom/unity3d/services/core/di/ServiceProvider$provideUniversalRequestDataStore$1;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/datastore/core/DataStoreFactory;->create$default(Landroidx/datastore/core/DataStoreFactory;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lkotlinx/coroutines/s;Lkotlin/jvm/b/a;ILjava/lang/Object;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    return-object p1
.end method

.method private final provideUserConsentDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;)Landroidx/datastore/core/DataStore;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/unity3d/services/core/domain/ISDKDispatchers;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "LByteStringStoreOuterClass$ByteStringStore;",
            ">;"
        }
    .end annotation

    const-string v0, "privacy.pb"

    invoke-direct {p0, p1, p2, v0}, Lcom/unity3d/services/core/di/ServiceProvider;->provideByteStringDataStore(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Ljava/lang/String;)Landroidx/datastore/core/DataStore;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;
    .registers 2

    sget-object v0, Lcom/unity3d/services/core/di/ServiceProvider;->serviceRegistry:Lcom/unity3d/services/core/di/IServicesRegistry;

    return-object v0
.end method

.method public initialize()Lcom/unity3d/services/core/di/IServicesRegistry;
    .registers 2

    sget-object v0, Lcom/unity3d/services/core/di/ServiceProvider$initialize$1;->INSTANCE:Lcom/unity3d/services/core/di/ServiceProvider$initialize$1;

    invoke-static {v0}, Lcom/unity3d/services/core/di/ServicesRegistryKt;->registry(Lkotlin/jvm/b/l;)Lcom/unity3d/services/core/di/ServicesRegistry;

    move-result-object v0

    return-object v0
.end method

package com.google.firebase.platforminfo;

import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.Dependency;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class DefaultUserAgentPublisher implements UserAgentPublisher {
    private final String a;
    private final GlobalLibraryVersionRegistrar b;

    DefaultUserAgentPublisher(Set<LibraryVersion> set, GlobalLibraryVersionRegistrar globalLibraryVersionRegistrar) {
        this.a = b(set);
        this.b = globalLibraryVersionRegistrar;
    }

    static /* synthetic */ UserAgentPublisher a(ComponentContainer componentContainer) {
        return new DefaultUserAgentPublisher(componentContainer.c(LibraryVersion.class), GlobalLibraryVersionRegistrar.getInstance());
    }

    private static String b(Set<LibraryVersion> set) {
        StringBuilder sb = new StringBuilder();
        Iterator<LibraryVersion> it = set.iterator();
        while (it.hasNext()) {
            LibraryVersion next = it.next();
            sb.append(next.b());
            sb.append('/');
            sb.append(next.c());
            if (it.hasNext()) {
                sb.append(' ');
            }
        }
        return sb.toString();
    }

    public static Component<UserAgentPublisher> component() {
        return Component.builder(UserAgentPublisher.class).b(Dependency.setOf(LibraryVersion.class)).f(new ComponentFactory() { // from class: com.google.firebase.platforminfo.a
            @Override // com.google.firebase.components.ComponentFactory
            public final Object a(ComponentContainer componentContainer) {
                return DefaultUserAgentPublisher.a(componentContainer);
            }
        }).d();
    }

    @Override // com.google.firebase.platforminfo.UserAgentPublisher
    public String getUserAgent() {
        if (this.b.a().isEmpty()) {
            return this.a;
        }
        return this.a + ' ' + b(this.b.a());
    }
}

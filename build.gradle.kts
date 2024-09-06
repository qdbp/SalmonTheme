file("build.env").readLines().forEach {
  if (it.isNotEmpty() && !it.startsWith("#")) {
    val pos = it.indexOf("=")
    val key = it.substring(0, pos)
    val value = it.substring(pos + 1)

    println(key)
    println(value)
    System.setProperty(key, value)
  }
}

plugins {
  id("org.jetbrains.intellij") version "1.17.4"
}

group = "me.enaumov"
version = "1.1.0"

repositories {
  mavenCentral()
}

// Configure Gradle IntelliJ Plugin - read more: https://github.com/JetBrains/gradle-intellij-plugin
intellij {
  version.set("2023.2.6")
  type.set("IC") // Target IDE Platform
  plugins.set(listOf(/* Plugin Dependencies */))
  updateSinceUntilBuild.set(false)
}

tasks {
  // Set the JVM compatibility versions
  withType<JavaCompile> {
    sourceCompatibility = "17"
    targetCompatibility = "17"
  }

  signPlugin {
    certificateChain.set(System.getProperty("CERTIFICATE_CHAIN"))
    privateKey.set(System.getProperty("PRIVATE_KEY"))
    password.set(System.getProperty("PRIVATE_KEY_PASSWORD"))
  }

  publishPlugin {
    token.set(System.getProperty("PUBLISH_TOKEN"))
  }
}
